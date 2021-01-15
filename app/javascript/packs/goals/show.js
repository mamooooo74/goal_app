const btn = document.querySelector('.memo_btn');
const form = document.querySelector('#memo_form');
const memo = document.querySelector('.memo');

btn.addEventListener('click', function(){
  form.classList.toggle("hidden");
  memo.classList.toggle("hidden");
});