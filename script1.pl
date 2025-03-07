my $name = "Alice";      # Declares a variable $name with local scope

if (1) {
    my $greeting = "Hello, $name!";
    print "$greeting\n"; # Can access both $greeting and $name here
}

print "$name\n";          # Can still access $name here
# print "$greeting\n";    # Error! $greeting is not accessible here
