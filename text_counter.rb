require 'tk'

app = TKRoot.new { title "Text Counter Application using Tkinter" }

def calculate_text_count
  text_content = $text_area.get("1.0", "end-1c")
  chars = text_content.length
  words = text_content.split.length
  lines = text_content.split("\n").length
  $result_label.text = "Characters: #{chars}\nWords: #{words}\nLines: #{lines}"
end
$text_area = TKText.new(app) do
  wrap 'word'
  width 40
  height 10
  pack
end
  
$update_text_button = TkButton.new(app) do
  text "Calculate Text Count"
  command proc { calculate_text_count }
  pack
end

$result_label = TkLabel.new(app) do
  text "Characters: 0\nWords: 0\nLines: 0"
  pack
end

$text_area.focus()
app.mainloop