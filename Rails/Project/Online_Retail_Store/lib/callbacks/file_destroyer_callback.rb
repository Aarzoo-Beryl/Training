class FileDestroyerCallback
  def self.after_destroy
    puts("The file was successfully destroyed")
  end
end
