
<?php
include('db_fns.php');
?>
 <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
							
								<?php
								$query_backpack = mysql_query("select * FROM tendocs where status = 1  order by date DESC ")or die(mysql_error());
								$num_row = mysql_num_rows($query_backpack);
								if ($num_row > 0){
								?>
									<form action="delete_backpack.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
									<a data-toggle="modal" href="#backup_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
									<?php include('delete.php'); ?>
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
                            </div>
                        </div>
                        <!-- /block -->