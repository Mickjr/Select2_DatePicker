<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset="utf-8">

	<title>Magazine</title>

	<meta name="description" content="">

    <!-- jQuery & Bootstrap / Stylesheet -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
    <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
    <link rel="stylesheet" href="/vendors/select2/css/select2.css">


    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

    <!-- Include Date Range Picker -->
	<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />


    <!-- Select 2 jQuery -->
    <!-- <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
    <script src="/vendors/select2/js/select2.js"></script>

    <!-- Mobile-friendly viewport -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
    <div class="container">
        <div class="col-md-5">
            <div class="form-area">
                <form role="form">
                    <br style="clear:both">
                            <h3 style="margin-bottom: 25px; text-align: center;">Find Magazine</h3>
                            <div class="form-group">
        						<select id="promo_code" style="width:200px;" name="promo_code"></select>
        						</div>
                				<div class="form-group">
            					<input id="startdate" type="text" name="startdate" value=""/>
            					</div>
            					<div class="form-group">
            					<input id="endingdate" type="text" name="endingdate" value=""/>
            				</div>
                     <button type="button" id="submit" name="submit" class="btn btn-primary">Get Units</button>
                </form>
				<br/>
				<div class="col-sm-12 col-md-6 col-lg-3">

			             <p id="count" name="count"></p>

			    </div>

            </div>
        </div>
   </div>

    <script type="text/javascript">

        $($(document).ready(function() {

        }));


         var path = "/data.php";

            $.ajax({

                type: 'POST',

                url: path,

                success: function (data){

                  $('#promo_code').append('<option></option>');

                  $.each(data, function(index, val) {

                      $.each(val, function(k, v) {

                          $('#promo_code').append('<option value="' + v.id + '">' + v.name + '</option>');

                      });

                  });

                }

            });

             $( '#promo_code' ).select2({

                  placeholder: "Select Promo Code"

                });


            $(function() {
    		    $('input[name="startdate"]').daterangepicker({
    		        singleDatePicker: true,
    		        showDropdowns: true
    		    },
    		    function(start, end, label) {
    		        var years = moment().diff(start, 'years');
    		    });
    		});

            $(function() {
	            $('input[name="endingdate"]').daterangepicker({
	                singleDatePicker: true,
	                showDropdowns: true
	            },
	            function(start, end, label) {
	                var years = moment().diff(start, 'years');
		            });
	        });

		</script>

		<script type="text/javascript">

	        // On button click pass promo code, start date, and ending date

	    	$(document).on('click', '#submit', function() {

				var sdate = $('#startdate').data('daterangepicker');
				var startdate = sdate.startDate.format('YYYY-MM-DD');

				var edate = $('#endingdate').data('daterangepicker');
				var endingdate = edate.startDate.format('YYYY-MM-DD');

				var promocode = $('#promo_code').val();

				$.ajax({

					url: '/data2.php',

					type: 'GET',

					data: { 'promo_code': promocode, 'startdate': startdate, 'endingdate': endingdate },

					success: function (data) {

					$('#count').text( data.count );

					}
				});

	    	});

		</script>

</body>


</html>
