class Parser
  def self.parse(filename, tempfile)
    File.open('tmp/' + filename, "w") do |f|
      f.write(tempfile.read)
    end
  end
end