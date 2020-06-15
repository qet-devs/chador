<?php


          $param=0;
          if(!isset($_GET['keyy'])){$_SESSION['links'][]=$id.'-'.$param;end($_SESSION['links']); $keyy= key($_SESSION['links']);}
          else{$keyy=$_GET['keyy'];}echo "<script> $('#thekey').val('".$keyy."');</script>";
                $result = mysql_query("insert into log values('','".$username." accesses find notice search  Panel.','".$username."','".date('YmdHi')."','".date('H:i')."','".date('d/m/Y')."','1')");  

                echo '<div class="vd_container" id="container">
                <div class="vd_content clearfix">
                    <button class="btn vd_btn vd_bg-green" style="display:none" id="modaltrigger" data-toggle="modal"
                            data-target="#myModal"><a></a></button>


            
                    <div class="vd_content-section clearfix">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel widget">
                                    <div class="panel-heading vd_bg-grey">
                                        <h3 class="panel-title text-capitalize"><span class="menu-icon"> <i class="fa fa-dot-circle-o"></i> </span>Uploaded documents
                                    </h3>
                                    </div>

                                    <!-- panel heading -->
                                    <div class="panel-body table-responsive">
                                       
                                           
<?php
                                $query_backpack = mysql_query("select * FROM tendocs where status = 1  order by date DESC ")or die(mysql_error());
                                $num_row = mysql_num_rows($query_backpack);
                                if ($num_row > 0){
                                ?>
                                    <form action="delete_backpack.php" method="post">
                                    <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                                    <a data-toggle="modal" href="#backup_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
                                    <?php
                                     include('delete.php'); ?>
                                        <thead>
                                                <tr>
                                                <th></th>
                                                <th>Date Upload</th>
                                                <th>File Name</th>
                                                <th>Description</th>
                                                <th></th>
                                                </tr>
                                        </thead>
                                        <tbody>
                                    <?php
                                        $query = mysql_query("select * FROM tendocs where status = '1'  order by date DESC ")or die(mysql_error());
                                        while($row = mysql_fetch_array($query)){
                                        $id  = $row['tid'];
                                    ?>                              
                                        <tr id="del<?php echo $id; ?>">
                                        <td width="30">
                                            <input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
                                        </td>
                                         <td><?php echo $row['date']; ?></td>
                                         <td><?php  echo $row['name']; ?></td>
                                         <td><?php echo $row['type']; ?></td>                                      
                                         <td width="30"><a href="<?php echo $row['link']; ?>"><i class="icon-download icon-large"></i></a></td>                                      
                                        </tr>
                                    <?php } ?>
                                        </tbody>
                                    </table>
                                    </form>
                                    <?php }else{ ?>
                                    <div class="alert alert-info"><i class="icon-info-sign"></i> No Files Inside Are Available.</div>
                                    <?php } ?>


                                      


                                    </div>
                                    <!-- panel body -->
                                </div>
                                <!-- Panel Widget -->
                            </div>
                            <!-- col-md-12 -->
                        </div>
                        <!-- row -->
            
                    </div>
                    <!-- .vd_content-section -->
            
                </div>
                <!-- .vd_content -->
            </div>
            <!-- .vd_container -->
            
            
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header vd_bg-green vd_white">
                            <button type="button" id="dismissmodal" class="close" data-dismiss="modal" aria-hidden="true"><i
                                    class="fa fa-times"></i></button>
                            <h4 class="modal-title" id="myModalLabel">Function List</h4>
                        </div>
                        <!-- /.modal-header -->
                        <div class="modal-body">
                            <form class="form-horizontal" action="#" role="form">
            
                                <div class="form-group">';
                                    $arr=array();
                                    $resulta =mysql_query("select * from accesstbl");
                                    $num_resultsa = mysql_num_rows($resulta);
                                    for ($v=0; $v <$num_resultsa; $v++) {
                                    $rowa=mysql_fetch_array($resulta);
                                    $var=stripslashes($rowa[$usertype]);
                                    $code=stripslashes($rowa['AccessCode']);
                                    $arr[$code]=$var;
                                    }
            
                                    if($arr[109]=='YES'){echo' <label class="col-sm-11" style="cursor:pointer;float:left"
                                                                      onclick="majoropen(700)">Edit Notice</label><br/>';}
                                    if($arr[113]=='YES'){echo' <label class="col-sm-11" style="cursor:pointer;float:left"
                                                                      onclick="majoropen(701)">Notice Info</label><br/>';}
                                    if($arr[114]=='YES'){echo' <label class="col-sm-11" style="cursor:pointer;float:left"
                                                                      onclick="majoropen(703)">Archive Notice</label><br/>';}
                                    echo'<input class="input-border-btm" type="hidden" id="tenparam" required>
                                </div>
            
            
                            </form>
                        </div>
                        <!-- /.modal-body -->
                    </div>
                    <!-- /.modal-contet -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            
            
            <script type="text/javascript">
                $(document).ready(function () {
                    "use strict";
            
                    var eventFired = function (type) {
                        console.log(type)
            
                        setTimeout(function () {
                            $("#data-tables tbody tr").off("click").on("click", function (event) {
                                $("#tenparam").val($(this).find("td").eq(0).html());
                                openoptmodal($(this).find("td").eq(0).html())
                            });
                        }, 500);
                    }
            
            
                    $("#data-tables")
                        .on("order.dt", function () {
                            eventFired("Order");
                        })
                        .on("search.dt", function () {
                            eventFired("Search");
                        })
                        .on("draw.dt", function () {
                            eventFired("Page");
                        })
                        .DataTable({
                            "processing": true,
                            "serverSide": true,
                            "ajax": "json.php?id=950"
                        });
            
            
                });
            </script>
            <style>td {
                cursor: pointer
            } </style>';
               
    

        ?>