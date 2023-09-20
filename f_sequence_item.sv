class f_sequence_item extends uvm_sequence_item;
  
  rand bit [127:0]i_wrdata;
  rand bit i_rden,i_wren;
  bit o_full;
  bit o_empty;
  bit o_alm_full;
  bit o_alm_empty;
  bit [127:0]o_rddata;

   `uvm_object_utils_begin(f_sequence_item)
  `uvm_field_int(i_wrdata, UVM_ALL_ON)
  `uvm_field_int(i_rden, UVM_ALL_ON)
  `uvm_field_int(i_wren, UVM_ALL_ON)
  `uvm_field_int(o_full, UVM_ALL_ON)
  `uvm_field_int(o_alm_full, UVM_ALL_ON)
  `uvm_field_int(o_empty, UVM_ALL_ON)
  `uvm_field_int(o_alm_empty, UVM_ALL_ON)
  `uvm_field_int(o_rddata, UVM_ALL_ON)
  `uvm_object_utils_end

  constraint c1{ {i_rden,i_wren} inside {2'b00,2'b01,2'b10,2'b11};}

  
  
   function new(string name="f_seq_item");
    super.new(name);
  endfunction
  
endclass

  

  
