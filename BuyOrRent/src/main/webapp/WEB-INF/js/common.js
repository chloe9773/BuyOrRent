function itemDetail() {
    alert("alerrrr");
}

function toggleMenu() {
    $(".following-menu-drop").toggle();
}

function changeRegion(type, region) {
    // alert(type);
    // alert(region);
    if(type == 'r1' && (region != '' || region != null)) {
        $("#region2").removeAttr("disabled");
    } 

    if(type == 'r2') {
        if (region.length > 0) {
            $("#region3").removeClass('d-none');
        } else if(region.length == 0) {
            $("#region3").addClass('d-none');
        }
    } 

}

function fileUpload() {
    $(".fileUpload").click();
}
$(document).on("change","#file",function(){
    if($("#file")[0].files.length != 0) {
        ext = $("#file").val().split('.').pop().toLowerCase(); //확장자

        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            //resetFormElement($("#file")); //폼 초기화
            alert('이미지 파일이 아닙니다. (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            img = "";
            for(i = 0; i < $("#file")[0].files.length; i++) {
                img += "<div class='photo-preview'><img class='preview preview"+i+"' src=#/></div>";
            }

            $('.photo-preview-wrap').html(img);
            for(i = 0; i < $("#file")[0].files.length; i++) {
                file = $('#file').prop("files")[i];
                blobURL = window.URL.createObjectURL(file);
                $('.preview' + i).attr('src', blobURL);
                $('.photo-preview').slideDown(); //업로드한 이미지 미리보기 
                $('#file').slideUp(); //파일 양식 감춤
            }

            $("#photo-count").html($("#file")[0].files.length);
        }
    }

});

function countChar() {
    var text = $(".textarea").val();
    var count = text.length;

    $(".comment-total").html(count);
}

$(document).on('keyup', '.textarea', function(e){
    var textarea = $(this).val();
    var count = textarea.length;
    $(".comment-total").html(count);
});

function replyCommentOpen(classNum) {
    $(".comment-edit-" + classNum).removeClass("d-none");
    $(".comment-reply-close-" + classNum).removeClass("d-none");
    $(".comment-reply-open-" + classNum).addClass("d-none");
}

function replyCommentClose(classNum) {
    $(".comment-edit-" + classNum).addClass("d-none");
    $(".comment-reply-close-" + classNum).addClass("d-none");
    $(".comment-reply-open-" + classNum).removeClass("d-none");
}

function optToggle(classNum) {
    $(".opt-" + classNum).toggle();
}

function cmtBoxToggle() {
    $(".board-main-bottom").toggle();
}

function hideNoti() {
    if($("#notiChk").prop("checked")) {
        $(".noti").addClass("d-none");
    } else {
        $(".noti").removeClass("d-none");
    }
}

function inputReset(className) {
    $("."+className).val('');
    $("."+className+"-erase-btn").addClass("d-hidden");
}

function chkInputVal(className) {
    var input = $("."+className).val();
    alert(input);

    if(input.length > 0) {
        $("."+className+"-erase-btn").removeClass("d-hidden");
    } else {
        $("."+className+"-erase-btn").addClass("d-hidden");
    }
}

$(document).on('keyup','.login-input', function(e){
    if($(".userid").val().length > 0) {
        $(".userid-erase-btn").removeClass("d-hidden");
    } else {
        $(".userid-erase-btn").addClass("d-hidden");
    }

    if($(".userpw").val().length > 0) {
        $(".userpw-erase-btn").removeClass("d-hidden");
    } else {
        $(".userpw-erase-btn").addClass("d-hidden");
    }
});

/* radiobtn 체크용 */
function circleChkBtn(chk, name, val) {
    if(chk == true) {
        $(".circle-default").addClass("d-none");
        $(".circle-chk").removeClass("d-none");
        $("input:radio[name="+name+"]:radio[value="+val+"]").prop('checked', true);
    } else {
        $(".circle-default").removeClass("d-none");
        $(".circle-chk").addClass("d-none");
        $("input:radio[name="+name+"]:radio[value="+val+"]").prop('checked', false);
    }
}

$(window).scroll(function(){
    var height = $(document).scrollTop();
    if(height >= 220) {
        $("#home-side-menu").show();
    } else {
        $("#home-side-menu").hide();
    }
});

function modalLayer(bool) {
    if(bool == true) {
        $("#modal").show();
        $('body').css("overflow", "hidden");
        $(".modal-opt-btn").show();
        $("#opt-btn-open").addClass("d-none");
        $("#opt-btn-close").removeClass("d-none");
    } else {
        $("#modal").hide();
        $('body').css("overflow", "scroll");
        $(".modal-opt-btn").hide();
        $("#opt-btn-close").addClass("d-none");
        $("#opt-btn-open").removeClass("d-none");
    }
}

/* delete d-none by classname */
function deleteDNone(classname) {
    $("." + classname).removeClass("d-none");
}
/* delete d-none by id */
function removeNone(id) {
    $("#" + id).removeClass("d-none");
}


/* add d-none by classname */
function addDNone(classname) {
    $("." + classname).addClass("d-none");
}
/* add d-none by id */
function addNone(classname) {
    $("#" + id).addClass("d-none");
}

/* showing chatroom leave option */
function chatLeaveOpt(optName, btnName, optBtn){
    deleteDNone(optName);
    $("." + btnName).removeAttr("onmouseleave");
    $("." + btnName).unbind('mouseleave');

    $('html').click(function(e){ 
        if(!$(e.target).hasClass('chat-in')){
            $("." + btnName).bind('mouseleave', function(){
                addDNone(optBtn);
            });
           
            addDNone(optBtn);
            addDNone(optName);
        }
    });
}

/* 채팅 선택시 우측에 채팅 내용 표시 */
function enterChat() {
    addDNone('chat-before');
    $('.chat-before').removeClass('table');
    deleteDNone('chat-after');
}

/* d-none 토글 */
function toggle(classname) {
    $("." + classname).toggle();
}

