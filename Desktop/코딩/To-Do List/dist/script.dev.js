"use strict";

var inputBox = document.getElementById("input-box");
var listContainer = document.getElementById("list-container");

function addTask() {
  if (inputBox.value === '') {
    alert("You must write something!");
  } else {
    var li = document.createElement("li"); // addTask 안에 li를 추가해. 

    li.innerHTML = inputBox.value;
    listContainer.appendChild(li);
    var span = document.createElement("span"); // 그리고 li안에 span을 추가하고 

    span.innerHTML = "\xD7"; // 스팬에 x 표시를 넣어. 

    li.appendChild(span);
  }

  inputBox.value = "";
  saveData();
}

listContainer.addEventListener("click", function (e) {
  if (e.target.tagName === "LI") {
    e.target.classList.toggle("checked");
    saveData();
  } else if (e.target.tagName === "SPAN") {
    e.target.parentElement.remove();
    saveData();
  }
}, false);

function saveData() {
  localStorage.setItem("data", listContainer.innerHTML);
}

function showTask() {
  listContainer.innerHTML = localStorage.getItem("data");
}

showTask();
//# sourceMappingURL=script.dev.js.map
