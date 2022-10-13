with Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Fixed;

procedure strings_example is 
    someVal  : String := "Hello there!";
    someVal2 : String := "Hello Palmeros!";
    longString : String(1 .. 250);
    longText : String := "Hello there back!";
begin
    --the follwoing lines will work just gine
    Ada.Strings.Fixed.Move(someVal, LongString);
    Ada.Text_Io.Put_Line(someVal);
    Ada.Text_Io.Put_line(longString);


    -- this will work just as well.
    Ada.Strings.Fixed.Move(someVal, longText);
    Ada.Text_IO.Put_Line(longText);
    Ada.Text_IO.Put_Line(Natural'Image(longText'Length));

    -- this will work exaclty as you would expect it to. 
    someVal := someVal2;
    Ada.Text_IO.Put_Line(someVal);

    Ada.Strings.Fixed.Move(longString, someVal);
    Ada.Text_IO.Put_Line(someVal);

    longText := "Hello there back!";
    Ada.Text_IO.Put_Line(longText);
end strings_example;
