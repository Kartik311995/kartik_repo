class base_class;
   function disp();
    $display("In base class");
  endfunction
endclass

class child_class extends base_class;
  function disp();
    $display("In child class");
  endfunction
endclass

module tb();
  base_class b1,b2;
  child_class c1,c2;
  initial begin
  b1=new();
  b1.disp();
  c1=new();
  c1.disp();
  b1=c1; //in sv we can assign child class handle to base class handle
  b1.disp();
  end
endmodule

/////with virtualkey word
class base_class;
  virtual function disp();
    $display("In base class");
  endfunction
endclass

class child_class extends base_class;
  virtual function disp();
    $display("In child class");
  endfunction
endclass

module poly();
  base_class b1,b2;
  child_class c1,c2;
  initial begin
  b1=new();
  b1.disp();
  c1=new();
  c1.disp();
  b1=c1; //in sv we can assign child class handle to base class handle, or we can say that if virtual is there and base class handle is pointing to child class then it will show in child class.
  b1.disp();
  end
endmodule



class Parent;
    
    virtual function void disp();
        $display("In Parent class");
    endfunction
endclass

class Child1 extends Parent;
    
    virtual function void disp();
        $display("In Child1 class");
    endfunction
endclass


class Child2 extends Parent;
    
    virtual function void disp();
        $display("In Child2 class");
    endfunction
endclass


module testbench;
    // Base class handle
    Parent p;

    // Child class handles
    Child1 c1;
    Child2 c2;

    initial begin
        
        p = new();
        p.disp(); //output:In parent class
     
        c1 = new();
        c1.disp(); //output: In child class
        p = c1;   
        p.disp(); //output: In child class 

        // Parent class handle pointing to Child2 object
        c2 = new();
        p = c2;   // Polymorphic behavior
        p.disp(); // Calls Child2 class method

       
    end
endmodule





