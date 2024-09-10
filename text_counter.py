import tkinter as tk
from tkinter import scrolledtext

app = tk.Tk()
app.title("Text Counter Application using Tkinter")


def calculate_text_count():
    text_content = text_area.get("1.0", "end-1c")
    chars = len(text_content)
    words = len(text_content.split())
    lines = len(text_content.split("\n"))
    result_label.config(text=f"Characters: {chars}\nWords: {words}\nLines: {lines}")


text_area = scrolledtext.ScrolledText(app, wrap=tk.WORD, width=40, height=10)
text_area.pack()

update_text_button = tk.Button(
    app, text="Calculate Text Count", command=calculate_text_count
)
update_text_button.pack()
result_label = tk.Label(app, text="Characters: 0\nWords: 0\nLines: 0")
result_label.pack()

text_area.focus()
app.mainloop()
