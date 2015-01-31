program TpModul1_KiswantoD;
uses crt;
type
  dynamic_array = array of integer; {Membuat Tipe Array Dynamic}
var
  input, i, a : integer;
  max, min :integer;
  ar : dynamic_array; {Deklarasi Array Dynamic}

begin
clrscr;
writeln('Menentukan bilangan Max dan Min');
writeln('Berapa jumlah bilangan yang ingin anda input?');
readln(input);
SetLength(ar,input); {Menentukan besar Array}

for i:= 0 to input - 1 do {Looping untuk input bilangan}
  begin
  writeln('Masukan bilangan ke ', i+1);
  readln(ar[i]);
  end;

max := ar[0]; {Deklarasi Bil Max Sementara pada variabel}
min := ar[0]; {Deklarasi Bil Min Sementara pada variabel}

for i:=1 to input - 1 do {Looping untuk cari nilai max dan min}
  begin
  if ar[i] > max then {Mencari BilMax, dengan cara membandingkan dengan BilLain}
    max := ar[i];
  if ar[i] < min then {Mencari BilMin, dengan cara membandingkan dengan BilLain}
    min := ar[i];
  end;

writeln('Nilai Tertinggi: ', max );
writeln('Nilai Terendah: ', min );
writeln('Tekan Sembarang untuk keluar');
readln();
end.
