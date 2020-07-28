<?php
require "db_fns.php";


$tid = $param = $_GET['param'];
if (!isset($_GET['keyy'])) {
    $_SESSION['links'][] = $id . '-' . $param;
    end($_SESSION['links']);
    $keyy = key($_SESSION['links']);
} else {
    $keyy = $_GET['keyy'];
}
echo "<script> $('#thekey').val('" . $keyy . "');</script>";
$result = mysql_query("insert into log values('','" . $username . " accesses Case File Panel.Record ID:" . $param . "','" . $username . "','" . date('YmdHi') . "','" . date('H:i') . "','" . date('d/m/Y') . "','1')");
$resultx = mysql_query("select * from case_files where id='" . $param . "' limit 0,1");
$rowx = mysql_fetch_array($resultx);

$stat = $rowx['file_status'];


if ($stat == 'open') {
    $status = 'Open';
    $col = '#1fae66';
} else if ($stat == 'pending') {
    $status = 'Pending';
    $col = '#f85d2c';
} else {
    $status = 'Closed';
    $col = '#f89c2c';
}

function displayBillData()
{
    $result = mysql_query("select * from receipts where status=1 and tid='" . $tid . "'");
    $num_results = mysql_num_rows($result);
    for ($i = 0; $i < $num_results; $i++) {
        $row = mysql_fetch_array($result);
        $categ = stripslashes($row['categ']);
        $code = stripslashes($row['serial']);
        if (stripslashes($row['drcr']) == 'dr') {
            $type = 'Invoice';
            $out = 5;
            $rcptno = stripslashes($row['invno']);
        }
        if (stripslashes($row['drcr']) == 'cn') {
            $type = 'Credit Note';
            $out = 55;
            $rcptno = stripslashes($row['credno']);
        }
        if (stripslashes($row['drcr']) == 'cr') {
            $type = 'Receipt';
            $out = 6;
            $rcptno = stripslashes($row['rcptno']);
        }

        if ($categ == 3) {
            $out = 7;
        }
        if ($categ == 4) {
            $out = 8;
        }
        echo "<tr class=\"gradeX\" id=\"normal" . $code . "\" title=\"Click to View\" style=\"cursor:pointer\" onclick=\"window.open('report.php?id=" . $out . "&rcptno=" . $rcptno . "')\" >";
        echo '<td style="display:none">' . stripslashes($row['stamp']) . '</td>
                                   <td>' . stripslashes($row['date']) . '</td>
                                  <td>' . $type . '</td>
                                  <td>' . $rcptno . '</td>
                                  <td>' . stripslashes($row['description']) . '</td>
                                  <td>' . number_format(floatval($row['amount'])) . '</td>
                                  <td>' . number_format(floatval($row['bal'])) . '</td>
                                    </tr>';

    }

}

function displayUploads()
{
    $resulta = mysql_query("select * from tendocs where  tid='" . $tid . "' order by stamp desc");
    $num_resultsa = mysql_num_rows($resulta);
    for ($i = 0; $i < $num_resultsa; $i++) {
        $rowa = mysql_fetch_array($resulta);
        $name = stripslashes($rowa['name']);
        $type = strtolower(pathinfo($name, PATHINFO_EXTENSION));
        if (exif_imagetype('uploads/tenants/' . $name . '')) {
            $src = 'uploads/tenants/' . $name;
        } else if ($type == 'pdf') {
            $src = 'img/adobe.png';
        } else if ($type == 'xls' || $type == 'xlsx') {
            $src = 'img/excel.png';
        } else if ($type == 'doc' || $type == 'rtf' || $type == 'docx') {
            $src = 'img/word.png';
        } else {
            $src = 'img/format.png';
        }
        echo '<div style="border:1px solid #ccc; margin-bottom:10px;width:200px;min-height:100px;max-height:200px;float:left;margin-right:10px;padding:5px;overflow:hidden" id="doc' . stripslashes($rowa['id']) . '">
                             <img src="img/delete.png" style="width:30px;height:30px;float:right;margin:5px;border:1px solid #f00;padding:2px;cursor:pointer" title="Delete" onclick="deldoc(' . stripslashes($rowa['id']) . ')"/>';
        echo "<a href=\"uploads/tenants/" . stripslashes($rowa['name']) . "\"  target=\"_blank\"><img  src=\"" . $src . "\" alt=\"Photo\" style=\"float:left; max-width:200px; max-height:100px;cursor:pointer\">
                             <div class=\"cleaner\"></div> <b>TYPE: " . stripslashes($rowa['type']) . "</b><br/>DETAILS: " . stripslashes($rowa['details']) . "<br/>NAME: " . stripslashes($rowa['name']) . "</a>
                              </div>";
    }

}

function displayNotifications()
{
    $arr = array();
    $result = mysql_query("select * from emails where status=1 and tid='" . $tid . "'");
    $num_results = mysql_num_rows($result);
    for ($i = 0; $i < $num_results; $i++) {
        $row = mysql_fetch_array($result);
        $arr['E-' . stripslashes($row['id'])] = stripslashes($row['timestamp']);
    }

    $result = mysql_query("select * from notices where status=1 and tid='" . $tid . "'");
    $num_results = mysql_num_rows($result);
    for ($i = 0; $i < $num_results; $i++) {
        $row = mysql_fetch_array($result);
        $arr['M-' . stripslashes($row['id'])] = stripslashes($row['timestamp']);
    }

    asort($arr);


    foreach ($arr as $key => $val) {

        $prefix = substr($key, 0, 1);
        $len = strlen($key);
        $len = $len - 2;
        $id = substr($key, 2, $len);
        if ($prefix == 'E') {
            $table = 'emails';
            $type = 'Email';
        }
        if ($prefix == 'M') {
            $table = 'notices';
            $type = 'Sms';
        }
        $result = mysql_query("select * from " . $table . " where id='" . $id . "'");
        $row = mysql_fetch_array($result);

        echo "<tr class=\"gradeX\">";
        echo ' <td style="width:20%">' . stripslashes($row['date']) . '-' . stripslashes($row['time']) . '</td>
                                  <td style="width:10%">' . $type . '</td>
                                  <td>' . stripslashes($row['message']) . '</td>
                               </tr>';

    }


}

echo '
    <div class="vd_container" id="container">
        <div class="vd_content clearfix" style="">
   
           <div class="vd_content-section clearfix">
            <div class="row" id="form-basic">
              <div class="col-md-12">
                <div class="panel widget">
                  <div class="panel-heading vd_bg-grey">
                    <h3 class="panel-title"> <span class="menu-icon"> <i class="fa fa-th-list"></i> </span> Client File-' . stripslashes($rowx['bname']) . '-[' . stripslashes($rowx['roomno']) . '] </h3>
                  </div>
                 <div class="panel-body">
                  <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab1" data-toggle="tab">Personal Information</a></li>
                      <li><a href="#tab2" data-toggle="tab">Billing</a></li>
                      <li><a href="#tab3" data-toggle="tab">Documents</a></li>
                      <li><a href="#tab4" data-toggle="tab">Correspondence</a></li>
                    </ul>     
                    <br/>               
                    <div class="tab-content mgbt-xs-20">
                      <div class="tab-pane active" id="tab1"> 
                    <div class="col-md-6">
                      <form class="form-horizontal" action="#" role="form">

                            <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Case File Number
                                        <span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                        <input type="text" id="unique_file_number"
                                               value="' . $row['unique_file_number'] . '" disabled>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                <label style="float:left" class="col-sm-4">Case File Type:<span
                                            style="color:#f00">*</span></label>
                                <div class="col-sm-8 controls">
                                    <input type="text" id="case_type"
                                               value="' . $row['case_type'] . '" disabled>
                                </div>
                                </div>
                            
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Client Name<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" id="client_uid"  value="' . $row['client_uid'] . '" disabled>
                                    </div>
                                </div>
    
    
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Referring Client<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" id="referrer_uid"  value="' . $row['referrer_uid'] . '" disabled>
                                    </div>
                                </div>
    
                                
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Debtor Client<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" list="clients" id="debtor_uid" value="' . $row['debtor_uid'] . '" disabled>
                                         
                                    </div>
                                </div>
    
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Assignee<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" id="assignee_username" list="assignees" value="' . $row['assignee_id'] . '" disabled>
                                    </div>
                                </div>
    
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Description<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                        <textarea id="description" disabled>' . $row['description'] . '</textarea>
                                    </div>
                                </div>
    
                            </form>
                        </div>

                        <div class="col-md-6">
                            <form class="form-horizontal" action="#" role="form">

                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Notification Date</label>
                                    <div class="col-sm-8 controls">
                                        <input type="text" id="notification_date" value="' . $row['notification_date'] . '" disabled>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Notification Message</label>
                                    <div class="col-sm-8 controls">
                                        <textarea id="notification_message" disabled>' . $row['notification_message'] . ' </textarea>
                                    </div>
                                </div>
                                                                      
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Principal Amount<span
                                                style="color:#f00">*</span></label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" id="principal" value="' . $row['principal'] . '" disabled>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Location</label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" id="location" value="' . $row['location'] . '" disabled>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">File Status</label>
                                    <div class="col-sm-8 controls">
                                    <input type="text" value="' . $row['file_status'] . '" disabled>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label style="float:left" class="col-sm-4">Remarks</label>
                                    <div class="col-sm-8 controls">
                                        <textarea id="remarks" disabled>' . $row['remarks'] . ' </textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                      </div><!--end tab-->

                      <div class="tab-pane" id="tab2">

                          <div class="panel-body table-responsive">
                            <table class="table table-striped data-tables" id="data-tables">
                              <thead>
                                <tr>
                                  <th style="display:none">Date</th> 
                                  <th>Date</th>
                                  <th>Type</th>
                                  <th>Rcpt/Inv No</th>
                                  <th>Description</th>
                                  <th>Amount</th>
                                  <th>Bal</th>
                                </tr>
                              </thead>
                              <tbody>
                              ';
displayBillData();
echo '
                               </tbody>
                            </table>
                          </div>
                       </div>
                      <div class="tab-pane" id="tab3"> 

                      <div style="width:100%;height:350px; overflow-y:auto; float:left; padding:2%">
                      ';


displayUploads();
echo '
                        </div>
                      </div>
                      
                      <div class="tab-pane" id="tab4">
                          <div class="panel-body table-responsive">
                            <table class="table table-striped data-tables" id="data-tables2">
                              <thead>
                                <tr>
                                  <th>Date</th>
                                  <th>Type</th>
                                  <th>Description</th>
                                  </tr>
                              </thead>
                              <tbody>
                              ';

displayNotifications();
echo '
                            </tbody>
                            </table>
                          </div>
                       </div>

                    </div>
                </div>
                <!-- Panel Widget --> 
              </div>
            <!-- row --> 
          </div>
           
        <!-- .vd_content --> 
      </div>
      <!-- .vd_container -->
        <script type="text/javascript">
      $(document).ready(function() {
          "use strict";
          $(".data-tables").dataTable();
      } );
      </script> 
      ';


?>