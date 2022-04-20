<?php
    class DBconnect {
        private $server = 'db';
        private $dbname = 'fullstack';
        private $user = 'root';
        private $pass = '';
        public function connect(){
            $conn = new PDO('mysql:host=' . $this->server . '; dbname=' . $this->dbname, $this->user, $this->pass);
        }   
    }



    
    /*
                try{
                $conn = new PDO('mysql:host=' . $this->server . '; dbname=' . $this->dbname, $this->user, $this->pass);
            } catch (\Execption $e) {
                echo "Database error: " . $e->getMessage(); 
            }
    */