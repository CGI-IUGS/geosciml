if(self.parent.frames.length!=0){
  if(self.parent.location.replace){
    self.parent.location.replace(document.location);
  }else{
    self.parent.location=document.location;
  }
}
