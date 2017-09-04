document.addEventListener("DOMContentLoaded", function(){
  const can = document.getElementById("myCanvas");
  can.width = 500;
  can.height = 500;
  const ctx = can.getContext("2d");

  ctx.fillStyle = "gray";

  ctx.fillRect(100,100,400,400);
  ctx.beginPath();
  ctx.arc(300,300,100,0,2*Math.PI);
  ctx.strokeStyle = "white";
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "#C5D8E7";
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(500, 500);
  ctx.lineTo(150, 300);
  ctx.lineTo(150, 100);
  ctx.fill();
});
