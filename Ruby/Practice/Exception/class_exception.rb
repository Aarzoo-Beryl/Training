#!usr/bin/ruby

File.open(path, "w") do |file|
  begin
    # Write out the data ...
  rescue
    # Something went wrong!
    raise FileSaveError.new($!)
  end
end

  
=begin

explaination - 
1. File.open(path, "w") do |file| ... end:
    This line opens a file specified by the path in write mode ("w"). 
    It uses a block syntax, ensuring that the file is automatically closed when the block finishes executing. 
    The file object is yielded to the block as file.

2. begin ... rescue ... end:
    The begin keyword starts a block of code where exceptions can be rescued (handled).
    Inside this block, there's some code for writing data to the file.

3. rescue:
    This keyword defines a block of code that is executed if an exception occurs within the begin block.
    In this case, it's a generic rescue block without specifying any specific exception type.

4. raise FileSaveError.new($!):
    If an exception occurs within the begin block (e.g., an error while writing data to the file), execution jumps to this line.
    The raise keyword is used to raise (or re-raise) an exception. In this case, it raises a custom FileSaveError.
    FileSaveError.new($!) creates a new instance of the FileSaveError class, passing the last exception ($!) as the reason for the error. 
    $! is a global variable that holds the last exception raised.

5. end:
    Marks the end of the begin block.

=end