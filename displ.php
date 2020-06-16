 echo '<div class="vd_container" id="container">
                <div class="vd_content clearfix">
                    <button class="btn vd_btn vd_bg-green" style="display:none" id="modaltrigger" data-toggle="modal"
                            data-target="#myModal"><a></a></button>
            
                    <div class="vd_content-section clearfix">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel widget">
                                    <div class="panel-heading vd_bg-grey">
                                        <h3 class="panel-title"><span class="menu-icon"> <i class="fa fa-dot-circle-o"></i> </span>Uploaded Documents
                                            Panel</h3>
                                    </div>
                                    <!-- panel heading -->
                                    <div class="panel-body table-responsive">
                                        <table class="table table-striped text-capitalize" id="data-tables">
                                            <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Date</th>
                                                <th>File Name</th>
                                                <th>Description</th>

                                               
                                            </tr>
                                            </thead>
                                        </table>
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
                            "ajax": "json.php?id=500"
                        });
            
            
                });
            </script>
            <style>td {
                cursor: pointer
            } </style>';
               