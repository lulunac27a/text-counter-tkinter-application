require 'tk'

app = TKRoot.new { title "Text Counter Application using Tkinter" }

def calculate_text_count
  text_content = $text_area.get("1.0", "end-1c") # get text content from start of text area to end of text area without new line at the end
  chars = text_content.length # get number of characters
  words = text_content.split.length # get number of words
  lines = text_content.split("\n").length # get number of lines
  $result_label.text = "Characters: #{chars}\nWords: #{words}\nLines: #{lines}" # update result label text
end
$text_area = TkText.new(app) do # set text area to 10 rows and 40 columns wide
  wrap 'word'
  width 40
  height 10
  pack
end
  
$update_text_button = TkButton.new(app) do
  text "Calculate Text Count"
  command proc { calculate_text_count } # when button is clicked, update text counter output
  pack
end

$result_label = TkLabel.new(app) do
  text "Characters: 0\nWords: 0\nLines: 0" # text counter result label
  pack
end

$text_area.focus() # focus on text area
Tk.mainloop # run the program loop