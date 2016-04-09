package dancing::docker::app;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    return "hello";
};

true;
