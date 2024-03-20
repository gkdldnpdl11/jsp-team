const category_detail = document.querySelector("#category_detail1");
const category_wrapper = document.querySelector(".category_detail_wrapper");
// 카테고리 마우스 이벤트
const categories = document.querySelectorAll(".category");
categories.forEach((category) => {
  category.addEventListener("mouseenter", handleCategoryMouseEnter);
  category.addEventListener("mouseleave", handleCategoryMouseLeave);
});
// 마우스 입장
function handleCategoryMouseEnter(e) {
  // const categoryId = e.target.dataset.categoryId;
  // const category = document.querySelector(`#category${categoryId}`);

  category_detail.style.display = "grid";
  category_wrapper.style.display = "block";
}
// 마우스 떠나기
function handleCategoryMouseLeave(e) {
  // const categoryId = e.target.dataset.categoryId;
  // const category = document.querySelector(`#category${categoryId}`);

  category_detail.style.display = "none";
  category_wrapper.style.display = "none";
}

category_wrapper.addEventListener("mouseenter", (e) => {
  category_detail.style.display = "grid";
  category_wrapper.style.display = "block";
});

category_wrapper.addEventListener("mouseleave", (e) => {
  category_detail.style.display = "none";
  category_wrapper.style.display = "none";
});
