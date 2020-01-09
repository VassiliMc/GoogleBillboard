public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
	System.out.println(primeFinder(e));
}  
public double primeFinder(String naenae){
	boolean result;
	for(int i = 0; i < naenae.length()-10; i++){
		result = isPrime(Double.parseDouble(naenae.substring(i, i+10)));
		if(result){
			return Double.parseDouble(naenae.substring(i, i+10));
		}
	}
	return -1;
}  
public boolean isPrime(double dNum)  
{   
	if(dNum < 2){
		return false;
	}
	for(int i = 2; i<=Math.sqrt(dNum); i++){
		if(dNum%i==0){
			return false;
		}
	}
    return true;  
} 
