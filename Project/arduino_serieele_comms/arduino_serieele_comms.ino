void vGenerateData();

void setup()
{
  /* 
   * 
   */
  Serial.begin(115200);
  while(!Serial)
  {
   
  }

}

void loop() 
{
  char cStartComand;// hoeft niet megegeven te worden in functie 
  uint32_t ulNumberOfSampels = 480;//mag worden meegegeven in functie 
  float fSamplePoint[480];//pointer in functie i8
    for(uint16_t ulCounter1 = 0 ; ulCounter1 < ulNumberOfSampels  ;ulCounter1++ )
    {
      // filling the array with random sine value's 
      fSamplePoint[ ulCounter1 ] = sin( rand() );

    }
if( cStartComand  == 'GO/n' )
{
  
    for (uint16_t ulCounter2 = 0  ; ulCounter2 < ulNumberOfSampels   ; ulCounter2++ ) 
    { 
      Serial.print(fSamplePoint[ulCounter2]);
    }
  }
}
