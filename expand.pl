use Irssi;

use vars qw($VERSION %IRSSI);

$VERSION = "0.1";
%IRSSI = (
	"authors"     => "Sigve Sebastian Farstad",
	"contact"     => "sigvefarstad@gmail.com",
	"name"        => "fullwidth",
	"description" => "Expands sent text to full width.",
	"url"         => "http://arkt.is/fullwidth",
);

Irssi::signal_add_first 'send text', 'expand_handler';

sub expand_handler {
    my ($text, $server, $win_item) = @_;
    $text =~ s/(.)/$1 /g;
    Irssi::signal_continue($text, $server, $win_item);
}
