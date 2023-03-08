const allSideMenu = document.querySelectorAll("#sidebar .side-menu.top li a");

allSideMenu.forEach((item) => {
  const li = item.parentElement;

  item.addEventListener("click", function () {
    allSideMenu.forEach((i) => {
      i.parentElement.classList.remove("active");
    });
    li.classList.add("active");
  });
});

// TOGGLE SIDEBAR
const menuBar = document.querySelector("#content nav .bx.bx-menu");
const sidebar = document.getElementById("sidebar");

menuBar.addEventListener("click", function () {
  sidebar.classList.toggle("hide");
});

const searchButton = document.querySelector(
  "#content nav form .form-input button"
);
const searchButtonIcon = document.querySelector(
  "#content nav form .form-input button .bx"
);
const searchForm = document.querySelector("#content nav form");

searchButton.addEventListener("click", function (e) {
  if (window.innerWidth < 576) {
    e.preventDefault();
    searchForm.classList.toggle("show");
    if (searchForm.classList.contains("show")) {
      searchButtonIcon.classList.replace("bx-search", "bx-x");
    } else {
      searchButtonIcon.classList.replace("bx-x", "bx-search");
    }
  }
});

if (window.innerWidth < 768) {
  sidebar.classList.add("hide");
} else if (window.innerWidth > 576) {
  searchButtonIcon.classList.replace("bx-x", "bx-search");
  searchForm.classList.remove("show");
}

window.addEventListener("resize", function () {
  if (this.innerWidth > 576) {
    searchButtonIcon.classList.replace("bx-x", "bx-search");
    searchForm.classList.remove("show");
  }
});

const switchMode = document.getElementById("switch-mode");

switchMode.addEventListener("change", function () {
  if (this.checked) {
    document.body.classList.add("dark");
  } else {
    document.body.classList.remove("dark");
  }
});

function displayQuater() {
  setTimeout(() => {
    var x = document.getElementById("quater");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  });
  setTimeout(() => {
    var x = document.getElementById("quaterresult");
    var y = document.getElementById("quater");
    y.style.display = "none";
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }, 3000);
}

function displaySemi() {
  setTimeout(() => {
    var x = document.getElementById("semi");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  });
  setTimeout(() => {
    var x = document.getElementById("semiresult");
    var y = document.getElementById("semi");
    y.style.display = "none";
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }, 3000);
}

function displayFinal() {
  setTimeout(() => {
    var x = document.getElementById("final");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  });
  setTimeout(() => {
    var x = document.getElementById("finalresult");
    var y = document.getElementById("final");
    y.style.display = "none";
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }, 3000);
}

function closeAll() {
  var a = document.getElementById("quaterresult");
  var b = document.getElementById("quater");
  var c = document.getElementById("semiresult");
  var d = document.getElementById("semi");
  var e = document.getElementById("finalresult");
  var f = document.getElementById("final");
  a.style.display = "none";
  b.style.display = "none";
  c.style.display = "none";
  d.style.display = "none";
  e.style.display = "none";
  f.style.display = "none";
}
