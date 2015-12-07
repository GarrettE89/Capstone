/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var blogs = $('#post');
    $.ajax({
        url: "index/Baking"
    }).success(function (data, status) {
        populateBlogs(data, status);
    });
});

function populateBlogs(blogList, status) {
    var blogs = $('#post');
    
    $.each(blogList, function(index, blog){
                blogs.append($(blog.content));
                blogs.append($('<hr>'));
//                $.each(blog.comments, function(index, comment){
//                   blogs.append($(comment.message));
//                });
    });
}