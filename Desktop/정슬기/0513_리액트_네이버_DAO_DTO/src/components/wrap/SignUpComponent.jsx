import React from 'react';
import axios from 'axios';
import $ from 'jquery';


export default function SignUpComponent(){

    const [state, setState] = React.useState({
        id: '',
        pw: '',
        name: '',
        birth:'',
        gender:'',
        email:'',
        nation:'',
        hp:''
    })


    // 1. 아이디 입력상자 onChange 이벤트 
    const onChangeId=(e)=>{
        setState({
            ...state, 
            id: e.target.value
           
        })
    }

    // 2. 비밀번호 입력 상자 onChange 이벤트 
   

    const onChangePw=(e)=>{
        setState({
            ...state,
            pw: e.target.value
        })
        

    }


    // 3. 비밀번호확인  입력상자  onChange 이벤트

    // const onChangeUserPw2=(e)=>{
    //     setState({
    //         ...state, 
          
    //         pw2: e.target.value
    //     })

    // }

    // 4. 이름  입력상자 onChange 이벤트
    // 입력제한조건
    // 1) 특수문자 입력과 동시에 삭제
    // 2) 공백이면 이름을 입력해 주세요.
    const onChangeName=(e)=>{
        setState({
            ...state,
           
            name:e.target.value
        })
    }



    // 생년월일 
    


    const onChangeBirth=(e)=>{
        setState({
          ...state,
          birth: e.target.value // 생년월일 (8자리)

        });
    };

    // 생년 입력상자 onchange() 이벤트 상태관리자 연결 변수 만들어 줍니다.
    const onChangeYear = onChangeBirth;

    // 생월 입력상자 onchange() 이벤트 상태관리자 연결 변수 만들어 줍니다.
    const onChangeMonth = onChangeBirth;

    // 생일 입력상자 onchange() 이벤트 상태관리자 연결 변수 만들어 줍니다.
    const onChangeDate = onChangeBirth;


    // 성별 
    const onChangeGender=(e)=>{
        setState({
            ...state,
            gender: e.target.value
        })
    }

    //이메일 
   
    const onChangeEmail=(e)=>{
        setState({
            ...state,
            email: e.target.value
        })

    }

        const onChangeNation=(e)=>{
        setState({
            ...state, 
            nation: e.target.value
        })
    }

    // 휴대폰
  
    const onChangeHp=(e)=>{
        setState({
            ...state,
            hp: e.target.value
            
        });

    }

    const onSubmitSignupEvent = (e) =>{
        e.preventDefault();
   

        

            // id, pw, name, birth, gender, email, nation, hp
            // const formData = {
            //     "id" : state.id,
            //     "pw" : state.pw,
            //     "name" : state.name,
            //     "birth" : state.birth,
            //     "gender" : state.gender,
            //     "email" : state.email,
            //     "nation" : state.nation,
            //     "hp" : state.hp
            // }

            console.log(formData);
            // 맥으로할때 
            // /usr/local/Cellar/tomcat/10.1.8/bin
            // ./catalina start 
            // $.ajax({
            //     url:'http://127.0.0.1:8080/0513네이버MVC/회원가입_로그인_수정_삭제_네이버/signup_action_test_parameter.jsp',
            //     type : 'post',
            //     data: formData,
            //     success(res){
            //         console.log('AJAX 성공!');
            //         console.log(res);
            //         console.log(JSON.parse(res));
            //         setState({
            //             ...state,
            //             confirmMsg: '네이버 회원가입을 축하드립니다.'
            //         });
            //     },
            //     error(err){
            //         console.log(`AJAX 실패! + ${err}`);
            //     }
            // });
            // console.log('데이터 전송 후 아래 내용입니다. ')

            let formData = new URLSearchParams();
            formData.append("id", state.id);
            formData.append("pw", state.pw);
            formData.append("name", state.name);
            formData.append("birth", state.birth);
            formData.append("gender", state.gender);
            formData.append("email", state.email);
            formData.append("nation", state.nation);
            formData.append("hp", state.hp);
        
    
            axios.get('http://localhost:8080/0513네이버MVC/회원가입_로그인_수정_삭제_네이버/signup_action_test_parameter.jsp',{
                params:formData
            })
            .then((res)=>{
                console.log('AXIOS 성공!');
                console.log(res);
                console.log(res.data);
            })
            .catch((err)=>{
                console.log('AXIOS 실패!');
                console.log(err);
            })
        
            fetch('http://localhost:8080/0513네이버MVC/회원가입_로그인_수정_삭제_네이버/signup_action.jsp',{
                method:'POST',
                body:formData
            })
            .then((res)=>{
                console.log('FETCH 성공!');
                console.log(res);
            })
            .catch((err)=>{
                console.log('FETCH 실패!');
                console.log(err);
            })
 }



    return (
    <>   
        <div id="wrap">
        <div className="title">
            <a href="http://www.naver.com"></a>
        </div>
        <form onSubmit={onSubmitSignupEvent} name="sign_up" id="signUp" method="post" action="./sign_up.php">
            <label>아이디</label>
            <div>
                <input 
                    type="text" 
                    name="id" 
                    id="id"
                    onChange={onChangeId}
                    
                />
                <span>@naver.com</span>
            </div>
            <label>비밀번호</label>
            <div>
                <input 
                    type="text" 
                    name="pw" 
                    id="pw"
                    onChange={onChangePw}
                   
                />
            </div>
            <label>비밀번호 확인</label>
            <div>
                <input 
                    type="text" 
                    name="pw2" 
                    id="pw2"
                    // onChange={onChangeUserPw2}
                />
            </div>
            <label>이름</label>
            <div>
                <input 
                    type="text" 
                    name="name" 
                    id="name"
                    onChange={onChangeName}
                />
            </div>
        
            <label>생년월일</label>
            <span>
                <div className="birth">
                    <input 
                        className="year" 
                        type="text" 
                        name="birth" 
                        id="birthYear" 
                        placeholder="년(4자)"
                        onChange={onChangeBirth}
                    />
                </div>
                <div className="birth">
                    <select onChange={onChangeBirth} className="month" name="birth" id="birthMonth">
                        <option value="월">월</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                <div className="birth">
                    <input 
                        className="day" 
                        type="text" 
                        name="birth" 
                        id="birthDay" 
                        placeholder="일"
                        onChange={onChangeBirth}
                    />
                </div>
            </span>
            <label>성별</label>
            <div>
                <select onChange={onChangeGender} name="gender" id="Gender">
                    <option value="성별">성별</option>
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                    <option value="선택안함">선택안함</option>
                </select>
            </div>
            <label>본인 확인 이메일<span>(선택)</span></label>
            <div>
                <input 
                    type="text" 
                    name="email" 
                    id="email" 
                    placeholder="선택 입력"
                    onChange={onChangeEmail}
                    />
            </div>
            <label>휴대전화</label>
            <div>
                <select onChange={onChangeNation} name="nation" id="nation">
                    <option value="대한민국 +82">대한민국 +82</option>
                    <option value="그리스 +30">그리스 +30</option>
                    <option value="나이지리아 +234">나이지리아 +234</option>
                    <option value="노르웨이 +47">노르웨이 +47</option>
                    <option value="독일 +49">독일 +49</option>
                </select>
            </div>
            <label></label>
            <div className="hp">
                <input 
                    type="text" 
                    className="hp" 
                    name="hp" 
                    id="hp" 
                    placeholder="전화번호 입력"
                    onChange={onChangeHp}
                />
                <button className="certification">인증번호 받기</button>
            </div>
            <button className="signup" type="submit">가입하기</button>
        </form>
    </div>


    </>
    );
};
