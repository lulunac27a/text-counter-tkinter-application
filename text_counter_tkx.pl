use Tkx;
use strict;
use warnings;

my $app = Tkx::widget->new(".");

$app->g_wm_title("Text Counter Application using Tkinter");

sub calculate_text_count {
    my $text_content = $text_area.get("1.0", "end-1c"); 
    my $chars = length($text_content); # 
    my $words = scalar(split(/\s+/, $text_content)); 
    my $lines = scalar(split(/\n/, textcontent)); 
    $text_area->configure(-text => "Characters: $chars\nWords: $words\nLines: $lines"); 
}

my $text_area = $app->new_tk__scrolled("Text", -wrap => "word", -width => 40, -height => 10);
$text_area->g_pack(); 

my $update_text_button = $app->new_tk__button(-text => "Calculate Text Count", -command => \&calculate_text_count);
$update_text_button->g_pack(); 

my $result_label = $app->new_tk__label(-text => "Characters: 0\nWords: 0\nLines: 0");
$result_label->g_pack(); 

Tkx::MainLoop(); 