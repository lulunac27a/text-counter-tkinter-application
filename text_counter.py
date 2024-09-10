import tkinter as tk
from tkinter import scrolledtext

app = tk.Tk()
app.title("Text Counter Application using Tkinter")


def calculate_text_count():
    """Calculates text count based on entered text input.
    chars - Number of characters
    words - Number of words
    lines - Number of lines
    """
    text_content = text_area.get(
        "1.0", "end-1c"
    )  # get text content from start of text area to end of text area without new line at the end
    chars = len(text_content)  # get number of characters
    words = len(text_content.split())  # get number of words
    lines = len(text_content.split("\n"))  # get number of lines
    result_label.config(
        text=f"Characters: {chars}\nWords: {words}\nLines: {lines}"
    )  # print the output


text_area = scrolledtext.ScrolledText(
    app, wrap=tk.WORD, width=40, height=10
)  # set text area to 10 rows and 40 columns wide
text_area.pack()

update_text_button = tk.Button(
    app, text="Calculate Text Count", command=calculate_text_count
)  # when button is clicked, update text counter output
update_text_button.pack()
result_label = tk.Label(
    app, text="Characters: 0\nWords: 0\nLines: 0"
)  # text counter result label
result_label.pack()

text_area.focus()  # focus on text area
app.mainloop()  # run the program loop
