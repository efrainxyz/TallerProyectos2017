$(function(){
  $('#letras').validCampo(' abcdefghijklmnñopqrstuvwxyz�����.;-,:1234567890');
  $('#letras1').validCampo(' abcdefghijklmnñopqrstuvwxyz.#');
  $('#letras2').validCampo(' abcdefghijklmnñopqrstuvwxyz');
  $('#letras3').validCampo('abcdefghijklmnñopqrstuvwxyz');
  $('#letras4').validCampo('abcdefghijklmnñopqrstuvwxyz');
  $('#letras5').validCampo('abcdefghijklmnñopqrstuvwxyz');
  $('#letras6').validCampo('abcdefghijklmnñopqrstuvwxyz');
  $('#letras7').validCampo('0123456789');
  $('#letras8').validCampo('0123456789');
  $('.dnival').validCampo('0123456789');
  $('#letras9').validCampo('abcdefghijklmnñopqrstuvwxyz0123456789');
  $('#codigo').validCampo('pP-1234567890');
  $('#req1').validCampo('0123456789');
  $('#req2').validCampo('0123456789');
  $('#req3').validCampo('0123456789');
  $('#req4').validCampo('0123456789');
  $('#numeros2').validCampo('0123456789');
  $('#numeros3').validCampo('0123456789');
  $('#dinero0').validCampo('0123456789.');
  $('#dinero1').validCampo('0123456789.');
  $('#dinero2').validCampo('0123456789.');
  $('#dinero3').validCampo('0123456789.');
  $('#dinero4').validCampo('0123456789.');
  $('#dinero5').validCampo('0123456789.');
  $('#dinero6').validCampo('0123456789.');
  $('#login1').validCampo('0123456789abcdefghijklmnñopqrstuvwxyz');
  $('#login2').validCampo('0123456789abcdefghijklmnñopqrstuvwxyz');
});
