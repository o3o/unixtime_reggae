import std.stdio;
import unixtime;

void main(string[] args) {
    auto time = UnixTimeHiRes.parse("12345");
    writeln(time.seconds);
}
