<link rel="stylesheet" type="text/css" href="assets/css/vendors/date-picker.css">
<div class="col-xl-6 xl-100 chart_data_left box-col-12">
  <div class="card">
    <div class="card-body p-0">
      <div class="row m-0 chart-main">
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media border-none align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4>
                  <?php 
                  echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project"));
                  ?>
                </h4>
                <span>Project</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking))); ?></h4><span>Open </span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4>
                  <?php echo "Rp. ".number_format(mysqli_fetch_array(mysqli_query($conn, "SELECT sum(amount) as nominal FROM pettycash WHERE flow='income' and is_delete = '0' and payment_date between '".date('Y-m-01')."' and '".date('Y-m-d')."' ORDER BY payment_date desc"))['nominal']); ?>
                    
                  </h4><span>Revenue this month </span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4>
                  <?php echo "Rp. ".number_format(mysqli_fetch_array(mysqli_query($conn, "SELECT sum(amount) as nominal FROM pettycash WHERE flow='income' and is_delete = '0' ORDER BY payment_date desc"))['nominal']); ?>
                </h4><span>Revenue </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-xl-6 xl-100 box-col-12">
  <div class="card">
    <div class="cal-date-widget card-body">
      <div class="row">
        <div class="col-xl-6 col-xs-12 col-md-6 col-sm-6">
          <div class="cal-info text-center">
            <span class="text-muted"><?php echo explode(",",dateIndonesian(date('Y-m-d')))[0] ?></span>
            <h2 style="color:#7366fe"><?php echo date('d') ?></h2>
            <div class="d-inline-block mt-2"><span class="b-r-dark pr-3"><?php echo bulan(date('m')) ?></span><span class="pl-3"><?php echo date('Y') ?></span></div>
            <p class="mt-4 f-16 text-muted" id="quote">
              <?php 
              $ch = curl_init(); 
              curl_setopt($ch, CURLOPT_URL, "https://zenquotes.io/api/random");
              curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
              $output = curl_exec($ch); 
              curl_close($ch);      
              $decode = json_decode($output);
              if ($decode) {
                print_r($decode[0]->h);
              }else{
                echo "<i>Yang penting pada sehat aja dah</i> ,- Adul";
              }
              ?>
            </p>
          </div>
        </div>
        <div class="col-xl-6 col-xs-12 col-md-6 col-sm-6">
          <div class="cal-datepicker">
            <div class="datepicker-here float-sm-right" data-language="en"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
