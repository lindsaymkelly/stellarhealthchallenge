def birthday_redact(date)
  "X/X/" + date[-4..-1]
end


def overwrite_file(filename)
  text = File.read(filename)
  new_contents = text.gsub(/\d+[\/\-]\d+[\/\-]/, "X/X/")

  File.open(filename, "w") { |file| file.puts new_contents }
end

def overwrite_content(content)

  new_contents = content.gsub(/\d+[\/\-]\d+[\/\-]/, "X/X/")

  p new_contents
end