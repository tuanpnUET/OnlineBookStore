<?php
require_once(ROOT.'Helper/Controller.php');
class HomeController extends Controller
{
    function index()
    {
        require(ROOT . 'Model/Home.php');
        $trangchus = new trangchu();
        $this->data['trangchus'] = $trangchus->newsp();
        $this->set($this->data);
       
        $trangchus1 = new trangchu();
        $this->data['trangchus1'] = $trangchus1->newtt();
        $this->set($this->data);
        $this->render("index");
    }
}  

?>