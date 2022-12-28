<?php
class PagesController extends Controller
{
    function view($nom)
    {
        $this->set(array(
            'welcome' => 'salut',
            'nom' => 'machin'
        ));

        $this->render('index');
    }
}
