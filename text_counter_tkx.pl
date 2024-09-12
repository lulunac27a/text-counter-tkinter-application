use Tkx;
use strict;
use warnings;

my $app = Tkx::widget->new(".");

$app->g_wm_title("Text Counter Application using Tkinter");

sub calculate_text_count {
    my $text_content = $text_area.get("1.0", "end-1c"); # get text content from start of text area to end of text area without new line at the end
    my $chars = length($text_content); # get number of characters
    my $words = scalar(split(/\s+/, $text_content)); # get number of words
    my $lines = scalar(split(/\n/, textcontent)); # get number of lines
    $text_area->configure(-text => "Characters: $chars\nWords: $words\nLines: $lines"); # update result label text
}

my $text_area = $app->new_tk__scrolled("Text", -wrap => "word", -width => 40, -height => 10); # set text area to 10 rows and 40 columns wide
$text_area->g_pack(); 

my $update_text_button = $app->new_tk__button(-text => "Calculate Text Count", -command => \&calculate_text_count); # when button is clicked, update text counter output
$update_text_button->g_pack(); 

my $result_label = $app->new_tk__label(-text => "Characters: 0\nWords: 0\nLines: 0"); # text counter result label
$result_label->g_pack(); # focus on text area

Tkx::MainLoop(); # run the program loop