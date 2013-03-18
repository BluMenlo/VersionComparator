An app that I developed works by downloading resources from an internet location.
The first step before I put my app through an intensive download process is to check that the resource has updated.
I use version numbers on my resources and store a bunch of local version numbers related to the files previously downloaded.

The main concept is splitting the version numbers and comparing each segment individually.

Obviously, when splitting parts, if the first number in a version is higher, then there's no need to compare further.
If the first number matches, then do the same check on the second number.

  BOOL greater = [VersionComparator isVersion:@"2.0.0" greaterThanVersion:@"1.1.0"];
