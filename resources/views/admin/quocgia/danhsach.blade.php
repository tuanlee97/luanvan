@extends('admin.layout.master')
@section('link')
<link rel="stylesheet" href="admin/assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="admin/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
@endsection
@section('admincontent')
<section role="main" class="content-body">
					<header class="page-header">
						<h2>Quản lý quốc gia</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="admin/trangchu">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Quản lý quốc gia</span></li>
								
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="fa fa-caret-down"></a>
									<a href="#" class="fa fa-times"></a>
								</div>
						
								<h2 class="panel-title">Default</h2>
							</header>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-6">
										<div class="mb-md">
											<button id="addRow" class="btn btn-primary">Add <i class="fa fa-plus"></i></button>
										</div>
										<div id="message"></div>
									</div>
								</div>
								<table class="table table-bordered table-striped mb-none" id="datatable-editable">
									{{ csrf_field() }}
									<thead>
										<tr>
											<th>Mã quốc gia</th>
											<th>Tên quốc gia</th>
											
											<th>Thao tác</th>
										</tr>
									</thead>
									<tbody>
										@foreach($quocgia as $qg)
										<tr>
											<td contenteditable class="column_name" data-column_name="maquocgia" data-id="{{$qg->maquocgia}}">{{$qg->maquocgia}}</td>
											<td contenteditable class="column_name" data-column_name="tenquocgia" data-id="{{$qg->tenquocgia}}">{{$qg->tenquocgia}}
											</td>
											
											<td class="actions">
												<a href="#" class="hidden on-editing save-row" id="save"><i class="fa fa-save"></i></a>
												<a href="#" class="hidden on-editing cancel-row"><i class="fa fa-times"></i></a>
												<a href="#" class="on-default edit"><i class="fa fa-pencil"></i></a>
												<a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
											</td>
										</tr>
										@endforeach
									</tbody>
								</table>      
							</div>
						</section>
						<div id="dialog" class="modal-block mfp-hide">
			<section class="panel">
				<header class="panel-heading">
					<h2 class="panel-title">Are you sure?</h2>
				</header>
				<div class="panel-body">
					<div class="modal-wrapper">
						<div class="modal-text">
							<p>Are you sure that you want to delete this row?</p>
						</div>
					</div>
				</div>
				<footer class="panel-footer">
					<div class="row">
						<div class="col-md-12 text-right">
							<button id="dialogConfirm" class="btn btn-primary">Confirm</button>
							<button id="dialogCancel" class="btn btn-default">Cancel</button>
						</div>
					</div>
				</footer>
			</section>
		</div>
					<!-- end: page -->
				</section>
<script type="text/javascript">
	$(document).ready(function(){

 fetch_data();

 // function fetch_data()
 // {
 //  $.ajax({
 //   url:"quocgia/fetch_data",
 //   dataType:"json",
 //   success:function(data)
 //   {
 //    var html = '';
 //    for(var count=0; count < data.length; count++)
 //    {
 //     html +='<tr>';
 //     html +='<td contenteditable class="column_name" data-column_name="maquocgia" data-id="'+data[count].id+'">'+data[count].maquocgia+'</td>';
 //     html += '<td contenteditable class="column_name" data-column_name="tenquocgia" data-id="'+data[count].id+'">'+data[count].tenquocgia+'</td>';
 //         html += '<td><button type="button" class="hidden btn btn-success btn-xs" id="Save">Add</button></td><a  class="hidden on-editing cancel"><i class="fa fa-times"></i></a><a class=" on-default edit-row"><i class="fa fa-pencil"></i></a><a  class=" on-default remove-row"><i class="fa fa-trash-o"></i></a></td></tr>';
 //    }
 //    $('tbody').html(html);
 //   }
 //  });
 // }

$(document).on('click', '#addRow', function(){
  var html = '';
  html +='<tr>';
     html +='<td contenteditable id="maquocgia" ></td>';
     html += '<td contenteditable id="tenquocgia"></td>';
     html += '<td><button type="button" class="btn btn-success btn-xs" id="Save">Add</button></td><a  class=" on-editing cancel"><i class="fa fa-times"></i></a><a class="hidden on-default edit-row"><i class="fa fa-pencil"></i></a><a  class="hidden on-default remove-row"><i class="fa fa-trash-o"></i></a></td></tr>';
     $('tbody').html(html);
 });

var _token = $('input[name="_token"]').val();
$(document).on('click', '#Save', function(){
  var maquocgia = $('#maquocgia').text();
  var tenquocgia = $('#tenquocgia').text();
  if(maquocgia != '' && tenquocgia != '')
  {
   $.ajax({
    url:"{{ route('them') }}",
    method:"POST",
    data:{maquocgia:maquocgia, tenquocgia:tenquocgia, _token:_token},
    success:function(data)
    {
     $('#message').html(data);
    location.reload();
    }
   });
  }
  else
  {
   $('#message').html("<div class='alert alert-danger'>Both Fields are required</div>");
  }
 });

 


 $(document).on('blur', '.column_name', function(){
  var column_name = $(this).data("column_name");
  var column_value = $(this).text();
  var id = $(this).data("id");
  
  if(column_value != '')
  {
   $.ajax({
    url:"{{ route('livetable.update_data') }}",
    method:"POST",
    data:{column_name:column_name, column_value:column_value, id:id, _token:_token},
    success:function(data)
    {
     $('#message').html(data);
    }
   })
  }
  else
  {
   $('#message').html("<div class='alert alert-danger'>Enter some value</div>");
  }
 });

 $(document).on('click', '.delete', function(){
  var id = $(this).attr("id");
  if(confirm("Are you sure you want to delete this records?"))
  {
   $.ajax({
    url:"{{ route('livetable.delete_data') }}",
    method:"POST",
    data:{id:id, _token:_token},
    success:function(data)
    {
     $('#message').html(data);
     fetch_data();
    }
   });
  }
 });


});
</script>
@endsection
@section('script')
		<script src="admin/assets/vendor/select2/select2.js"></script>
		<script src="admin/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="admin/assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
		<script src="admin/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		<script src="admin/assets/javascripts/tables/examples.datatables.default.js"></script>
		<script src="admin/assets/javascripts/tables/examples.datatables.row.with.details.js"></script>
		<script src="admin/assets/javascripts/tables/examples.datatables.tabletools.js"></script>
		<script src="admin/assets/javascripts/tables/examples.datatables.editable.js"></script>

@endsection
