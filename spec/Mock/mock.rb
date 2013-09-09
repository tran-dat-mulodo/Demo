#require 'rspec/mocks/standalone'

class Student  
  name
  def message(arg1,arg2)
    
  end
  
  def foo#(arg)
    
  end
end


describe Student do
    it "Mock" do
      
      #double object
      student = double(Student)
      
      #stub method     
      student.stub(:name) {'Doremon'}
         
      student.stub(:name => 'Doremon')
      
      allow(student).to receive(:name).and_return("Xeko")
      
      student = double("book", :name=> "Nobita")
      
      #fake method
      allow(student).to receive(:message) do |arg1,arg2|
        expect(arg1).to have_text("a")
        return "b"
      end
      
      
      #require 'rspec/mocks/standalone'
        #it "works" do
          object = Student.new
          allow(object).to receive(:foo) do |arg|
            if arg == :this
              "got this"
            elsif arg == :that
              "got that"
            end
          end   
        
          #Expect Syntax
          expect(object.foo(:this)).to eq("got this")
          #expect(object.foo(:this)).to eq("got that")
          
          #Should Syntax
          object.foo(:this).should eq("got this")
        
        #end
   
      
      Student.any_instance.stub(:foo).and_return("Xuka")
        
      
      #Message receive object
      obj=Student.new
      
      obj.should_receive(:message).with('arg','arg2')
      obj.message("arg","arg2")
        
      #Matcher ft
      obj.should_receive(:foo).with(no_args)
      obj.foo()
    end
end