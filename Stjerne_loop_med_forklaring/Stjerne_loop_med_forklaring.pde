for (int i = 5; i > 0; i--){
  for (int j = 1; j <= i; j++){
    print("* ");
  }
  println();
}

// i er lig 5, j er lig 1. Det der sker er at hvis i er lig 5, og vi går ned i vores
//andet loop, så tjekker vi om j <= 5, hvilket den er, og så siger j + 1. 
//Det vil den så gøre indtil at j bliver 6, hvor den så går ud af loopet og printer
//5 stjerner. Efter den første loop vil i så nu blive 4, hvor j så igen ser om j <= i,
//det er den og den køre så indtil j er <= 4. Det betyder så at j kun printer 4 gange
//og sådan køre den så indtil den sidste stjerne og i bliver 1 så j ikke kan blive
//mindre.
