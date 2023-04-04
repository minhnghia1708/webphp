<?php 
  $sql_sua_sp = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
  $query_sua_sp = mysqli_query($mysqli,$sql_sua_sp);

 ?>
<p>Sửa sản phẩm</p>
<table border="1" width="100%" style="border-collapse: collapse;">
  <?php 
while($row = mysqli_fetch_array($query_sua_sp)){
   ?>
<form method="POST" action="modules/quanlysp/xuly.php?idsanpham=<?php echo $row['id_sanpham'] ?>" enctype="multipart/form-data">
  <tr>
    
     <td> <label  class="form-label">Tên Sản Phẩm</label> </td>
    <td><input type="text"class="form-control" value="<?php echo $row['tensanpham'] ?>" name="tensanpham" width="100%"></td>
  </tr>
  <tr>
    
     <td> <label  class="form-label">Mã sản phẩm</label> </td>
    <td><input type="text"class="form-control" value="<?php echo $row['masanpham'] ?>" name="tensanpham" width="100%"></td>
  </tr>
  <tr>
    
    <td> <label  class="form-label">Giá sản phẩm </label> </td>
    <td><input type="text"class="form-control" value="<?php echo $row['giasanpham'] ?>" name="tensanpham" width="100%"></td>
  </tr>

  <tr>
     <td> <label  class="form-label">Số lượng sản phẩm </label> </td>
    <td><input type="text"class="form-control" value="<?php echo $row['soluong'] ?>" name="tensanpham" width="100%"></td>
  </tr>
  <tr>
    <td>hình ảnh sản phẩm </td>
    <td>
      <input type="file" name="hinhanh" width="100%">
      <img src="modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" width="150px">
    </td>

  </tr>
  <tr>
    <td>Tóm tắt </td>
    <td><textarea rows="10"  name="tomtat" style="resize: none"><?php echo $row['tomtat'] ?></textarea></td>
  </tr>
  <tr>
    <td>Nội dung sản phẩm </td>
    <td><textarea rows="10"  name="noidung" style="resize: none"><?php echo $row['noidung'] ?></textarea></td>
  </tr>
  <tr>
    <td>Danh mục sản phẩm</td>
    <td><select name="danhmuc">
        <?php 
        $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
        $query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
        while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
          if($row_danhmuc['id_danhmuc']==$row['id_danhmuc']){
        ?>
        <option selected value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
        <?php
          }else{
        ?>
        <option value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
        <?php
          }
        }
        ?>
      </select>
    </td>
  </tr>

  <tr>
    <td>Tình trạng</td>
    <td><select name="tinhtrang">
        <?php
        if($row['tinhtrang']==1){
        ?>
        <option value="1" selected>Kích hoạt</option>
        <option value="0">Ẩn</option>
        <?php
        }else{
        ?>
        <option value="1">Kích hoạt</option>
        <option value="0" selected>Ẩn</option>
        <?php
        }
        ?>
      </select>
    </td>
  </tr>
  <tr>
    <td colspan="2"><button type="submit" name="suasanpham" class="btn btn-primary">Sửa Sản Phẩm</button></td>
  </tr>
</form>
<?php
}
?>
</table>