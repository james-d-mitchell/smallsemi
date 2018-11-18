#############################################################################
##
#W  PackageInfo.g                  Smallsemi - a GAP library of semigroups
#Y  Copyright (C) 2008-2015            Andreas Distler & James D. Mitchell
##
##  Licensing information can be found in the README file of this package.
##
#############################################################################
##

##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "0.6.11">
##  <!ENTITY ARCHIVENAME "smallsemi-0.6.11">
##  <#/GAPDoc>

SetPackageInfo( rec(
PackageName := "Smallsemi",
Subtitle := "A library of small semigroups",
Version := "0.6.11",
Date := "26/04/2017", # this is in dd/mm/yyyy format

Persons := [
  rec(LastName      := "Distler",
      FirstNames    := "Andreas",
      IsAuthor      := true,
      IsMaintainer  := true,
      Email         := "a.distler@tu-bs.de",
      PostalAddress := Concatenation( [
                       "AG Algebra und Diskrete Mathematik\n",
                       "TU Braunschweig\n", "Rebenring 31 (A14)\n",
                       "38106 Braunschweig\n", "Germany"] ),
      Place         := "Braunschweig",
      Institution   := "Technische Universität Braunschweig"),
  rec(
      LastName      := "Mitchell",
      FirstNames    := "James",
      IsAuthor      := true,
      IsMaintainer  := true,
      Email         := "jdm3@st-and.ac.uk",
      WWWHome       := "http://tinyurl.com/jdmitchell",
      PostalAddress := Concatenation( [
                       "Mathematical Institute\n", "North Haugh\n",
                       "St Andrews\n", "Fife\n", "KY16 9SS\n", "Scotland"] ),
      Place         := "St Andrews",
      Institution   := "University of St Andrews"
  )
],
Status := "deposited",

PackageWWWHome  := "https://gap-packages.github.io/smallsemi/",
README_URL      := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/gap-packages/smallsemi",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/smallsemi-", ~.Version ),
ArchiveFormats := ".tar.gz",

AbstractHTML :=
  "The <Package>Smallsemi</Package> package is a data library of semigroups \
   of small size. It provides all semigroups with at most 8 elements as well \
   as various information about these objects.",

PackageDoc := rec(
  BookName  := "Smallsemi",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "a library of small semigroups",
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.8",
  NeededOtherPackages := [],
  SuggestedOtherPackages := [],
  ExternalConditions :=
   ["gzip is needed in standard location if data files are used uncompressed"]),
AvailabilityTest := ReturnTrue,
BannerString := Concatenation(
  ListWithIdenticalEntries(SizeScreen()[1]-3, '-'), "\n", ~.PackageName,
  " -   ", ~.Subtitle, "\n",
  "by ", ~.Persons[1].FirstNames, " ", ~.Persons[1].LastName,
  " & " , ~.Persons[2].FirstNames, " ", ~.Persons[2].LastName, "\n",
  "For contents, type: ?Smallsemi:\n" ,
  "Loading ", ~.PackageName, " ", ~.Version, " ...\n",
  ListWithIdenticalEntries(SizeScreen()[1]-3, '-'), "\n" ),
Autoload := false,
TestFile := "tst/testall.g",
Keywords := ["small semigroups", "data library", "multiplication tables"],

AutoDoc := rec(
    TitlePage := rec(
        Version := Concatenation( "Version ", ~.Version ),
        Copyright := """
            &copyright; 2008-15 A. Distler &amp; J. D. Mitchell.<P/>

            <Package>Smallsemi</Package> is free software: you can
            redistribute it and/or modify it under the terms of the GNU
            General Public License as published by the Free Software
            Foundation, either version 3 of the license, or (at your option)
            any later version.<P/>

            <Package>Smallsemi</Package> is distributed in the hope that it
            will be useful, but WITHOUT ANY WARRANTY; without even the
            implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
            PURPOSE. See the GNU General Public License for more details.<P/>

            A copy of the GNU General Public License is available in the file
            'GPLv3'; for the latest version
            see`http://www.gnu.org/licenses/.<P/>

            This file is part of <Package>Smallsemi</Package>, though as
            documentation it is released under the GNU Free Documentation
            License (see
            <URL>http://www.gnu.org/licenses/licenses.html#FDL</URL>).
            """,

        Colophon := """
            If you use <Package>Smallsemi</Package>, please tell us by
            sending an email to <Email>a.distler@tu-bs.de</Email> or
            <Email>jdm3@st-and.ac.uk</Email>.
            <P/>
            If you find any bugs or have any suggestions or comments, we
            would very much appreciate it if you would let us know. Also, we
            would like to hear about applications of this software.
            """,

        Acknowledgements := """
            We would like to thank Tom Kelsey for making this library
            possible by running all the initial computations in Minion <Cite
            Key="minion"/>. <Br/>

            The first author acknowledges financial support of the University
            of St Andrews. The second author acknowledges support of EPSRC
            grant number GR/S/56085/01.
            """,
    ),
),
));

