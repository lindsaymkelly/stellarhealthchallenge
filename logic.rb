def birthday_redact(date)
  "X/X/" + date[-4..-1]
end


def overwrite_file(filename)
  text = File.read(filename)
  new_contents = text.gsub(/\d+[\/\-]\d+[\/\-]/, "X/X/")

  File.open(filename, "w") { |file| file.puts new_contents }
end