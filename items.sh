 
#!/bin/bash

echo "which would you choose:"
echo "1) reading"
echo "2) dancing"
echo "3) cooking"
echo "4) bowling"
echo "5) watching tv"
echo "enter number of your choice"
read choice

case $choice in

   1)
      echo "you are reading"
        
     
      ;;    
    
   2)
      echo "you are dancing"
      echo "what type of song?"
      read type
      if [[ $type == "slow" ]]; then 
           echo "Fally!"
      else 
           echo "something loud"
      fi   
      ;;
  
   3)   
      echo "you are cooking"
     
      ;;
   
   4) 
      echo "you are bowling"
     
      ;;

  5)
      echo "you are watching tv"
     
      ;;

  *)
      echo "Invalid option. Please choose from 1, 2, 3, 4 or 5."
     
      ;;
esac

     
    
