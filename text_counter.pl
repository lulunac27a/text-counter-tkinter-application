use strict;
use Tk;

my $app = MainWindow->new;

$app->title("Text Counter Application using Tkinter");

sub calculate_text_count {
    my $text_content = $text_area.get("1.0", "end-1c"); # get text content from start of text area to end of text area without new line at the end
    my $chars = length($text_content); # get number of characters
    my $words = scalar(split(/\s+/, $text_content)); # get number of words
    my $lines = scalar(split(/\n/, textcontent)); # get number of lines
    $text_area->configure(-text => "Characters: $chars\nWords: $words\nLines: $lines"); # update result label text
}

my $text_area = $app->Scrolled("Text", -wrap => "word", -width => 40, -height => 10)->pack; # set text area to 10 rows and 40 columns wide

my $update_text_button = $app->Button(-text => "Calculate Text Count", -command => \&calculate_text_count)->pack; # when button is clicked, update text counter output

my $result_label = $app->Label(-text => "Characters: 0\nWords: 0\nLines: 0")->pack; # text counter result label

MainLoop; # run the program loop