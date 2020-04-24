<?php
require_once (ROOT."/Helper/Database.php");
class trangchu extends Database{
	public function newsach(){
		$sql = "SELECT maSach,tenSach,gia,anh FROM sach
				ORDER BY ngayDang
				LIMIT 6";
		echo $sql;
		$result = $this->getConnection()->prepare($sql);
		$result->execute();
		return $result->fetchAll();
	}
	public function newquangcao(){
		$sql = "SELECT maTin,tenTinTuc,anh FROM tintuc
				ORDER BY Rand()
				LIMIT 6";
		echo $sql;
		$result = $this->getConnection()->prepare($sql);
		$result->execute();
		return $result->fetchAll();
	}
}
?>