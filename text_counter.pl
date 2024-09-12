use Tk;
use strict;

my $app = MainWindow->new;

$app->title("Text Counter Application using Tkinter");

sub calculate_text_count {
    my $text_content = $text_area.get("1.0", "end-1c");
    my $chars = length($text_content);
    my $words = scalar(split(/\s+/, $text_content));
    my $lines = scalar(split(/\n/, textcontent));
    $text_area->configure(-text => "Characters: $chars\nWords: $words\nLines: $lines");
}

my $text_area = $app->Scrolled("Text", -wrap => "word", -width => 40, -height => 10)->pack;

my $update_text_button = $app->Button(-text => "Calculate Text Count", -command => \&calculate_text_count)->pack;

my $result_label = $app->Label(-text => "Characters: 0\nWords: 0\nLines: 0")->pack;

MainLoop;