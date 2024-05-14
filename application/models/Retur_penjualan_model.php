<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Retur_penjualan_model extends CI_Model {
	private $table;
	private $select_default;
	function __construct(){
        parent::__construct();
		$this->table = "sales_retur";
		$this->select_default = '*, sales_retur.id AS id, sales_id,total_price, total_item,sales_retur.date AS date';
	}
	
	public function get_all($limit_offset = array()){
		$this->db->select($this->select_default);
		$this->db->order_by("date", "desc");
		if(!empty($limit_offset)){
			$query = $this->db->get($this->table,$limit_offset['limit'],$limit_offset['offset']);
		}else{
			$query = $this->db->get($this->table);
		}
		return $query->result();
	}
	public function count_total(){
		$query = $this->db->get($this->table);
		return $query->num_rows();
	}
	public function get_all_array(){
		$query = $this->db->order_by("date", "desc")->get($this->table);
		return $query->result_array();
	}
	public function get_last_id(){
		$this->db->order_by('id', 'DESC');

		$query = $this->db->get($this->table,1,0);
		return $query->result();
	}
	public function insert($data){
		$this->db->insert($this->table, $data);
	}
	public function update($id,$data){
		$this->db->where('id', $id);
		$this->db->update($this->table, $data);
	}
	public function get_by_id($id){
		$response = false;
		$query = $this->db->get_where($this->table,array('id' => $id));
		if($query && $query->num_rows()){
			$response = $query->result_array();
		}
		return $response;
	}
	public function delete($id){
		$this->db->delete($this->table, array('id' => $id));
	}
	public function delete_data($sales_id){
		$this->db->delete("sales_data", array('sales_id' => $sales_id));
	}
	public function get_detail($sales_id){
		$sql = "SELECT *, sales_retur.id AS id, product.id as product_id FROM sales_retur 
				JOIN sales_data ON sales_retur.id = sales_data.sales_id 
				JOIN product ON product.id = sales_data.product_id 
				JOIN category ON category.id = sales_data.category_id 
				WHERE sales_data.sales_id = '".$sales_id."'";
		$query = $this->db->query($sql);
		return $query->result();
	}
	public function get_detail_by_id($id){
		$sql = "SELECT *, sales_retur.id AS id, product.id as product_id 
				FROM sales_retur JOIN sales_data ON sales_retur.id = sales_data.sales_id 
					JOIN product ON product.id = sales_data.product_id 
					JOIN category ON category.id = sales_data.category_id 
			  	WHERE sales_retur.id = '".$id."'";
		$query = $this->db->query($sql);
		return $query->result();
	}
	public function get_filter($filter = '',$limit_offset = array(),$is_array = false){
		$this->db->select($this->select_default);
		$this->db->order_by("date", "desc");
		if(!empty($filter)){
			$this->db->where($filter);
			if($limit_offset){
				$this->db->limit($limit_offset['limit'],$limit_offset['offset']);
			}
			$query = $this->db->get($this->table);
		}else{
			$query = $this->db->get($this->table,$limit_offset['limit'],$limit_offset['offset']);
		}
		if($is_array){
			return $query->result_array();
		}else{
			return $query->result();
		}
	}
	public function count_total_filter($filter = array()){
		if(!empty($filter)){
			$query = $this->db->get_where($this->table,$filter);
		}else{
			$query = $this->db->get($this->table);
		}
		return $query->num_rows();
	}
	public function get_all_not_returned(){
		$query = $this->db->get_where($this->table,array("is_return" => "0"));
		return $query->result();
	}
}