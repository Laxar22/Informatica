const quizData = [
    {
        question: "Chi si teletrasporta con la sua abilità 'Living Shadow'?",
        a: "Riven",
        b: "Zed",
        c: "Yasuo",
        d: "Akali",
        correct: "b",
    },
    {
        question: "Chi è il campione che mette funghetti maledetti in giro per la mappa?",
        a: "Braum",
        b: "Teemo",
        c: "Gnar",
        d: "Sejuani",
        correct: "b",
    },
    {
        question: "Quale campione come ruoli ha Mage e Marksman?",
        a: "Ezreal",
        b: "Jhin",
        c: "Lucian",
        d: "Draven",
        correct: "a",
    },
    {
        question: "Quale campione è un gatto magico che ama le avventure?",
        a: "Yuumi",
        b: "Nidalee",
        c: "Rengar",
        d: "Kennen",
        correct: "a",
    },
    {
        question: "Chi è un mago che utilizza una palla per attaccare e difendersi?",
        a: "Heimerdinger",
        b: "Viktor",
        c: "Jayce",
        d: "Orianna",
        correct: "d",
    }
];

const quiz = document.getElementById('quiz');
const questionEl = document.getElementById('question');
const optionButtons = document.querySelectorAll('.option');
const submitBtn = document.getElementById('submit');
const leaderboardList = document.getElementById('leaderboard-list');

let currentQuiz = 0;
let score = 0;
let selectedAnswer = null;
let points = 0;
let playerName = '';

function loadQuiz() {
    deselectAnswers();

    const currentQuizData = quizData[currentQuiz];

    questionEl.innerText = currentQuizData.question;
    optionButtons.forEach(button => {
        const option = button.id;
        button.innerText = currentQuizData[option];
    });
}

function deselectAnswers() {
    selectedAnswer = null;
    optionButtons.forEach(button => {
        button.classList.remove('selected');
    });
}

function selectAnswer(option) {
    deselectAnswers();
    document.getElementById(option).classList.add('selected');
    selectedAnswer = option;
}

submitBtn.addEventListener('click', () => {
    if (selectedAnswer) {
        if (selectedAnswer === quizData[currentQuiz].correct) {
            score++;
            points += 100; // Guadagna 100 punti per ogni risposta esatta
        }

        currentQuiz++;

        if (currentQuiz < quizData.length) {
            loadQuiz();
        } else {
            quiz.innerHTML = `
                <h2>Hai risposto correttamente a ${score}/${quizData.length} domande</h2>
                <h3>Hai totalizzato ${points} punti</h3>
                <button onclick="location.reload()">Ricomincia</button>
                <button id="home" onclick="window.location.href='../index.html'">Home</button>
            `;
            saveScore(playerName, points);
        }
    }
});

function saveScore(name, points) {
    const data = new FormData();
    data.append('nome', name);
    data.append('punteggio', points);

    fetch('save_score.php', {
        method: 'POST',
        body: data
    })
    .then(response => response.text())
    .then(data => {
        console.log('Success:', data);
        updateLeaderboard();
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}

function updateLeaderboard() {
    fetch('get_leaderboard.php')
    .then(response => response.json())
    .then(data => {
        leaderboardList.innerHTML = data.map(entry => `<li class="list-group-item">${entry.nome} - ${entry.punteggio} punti</li>`).join('');
        document.getElementById('leaderboard').style.display = 'block'; // Mostra la leaderboard
    });
}

// Inizializza la schermata di inserimento nome
document.getElementById('startQuiz').addEventListener('click', () => {
    playerName = document.getElementById('playerNameInput').value;
    if (playerName) {
        document.getElementById('startScreen').style.display = 'none';
        document.getElementById('quiz').style.display = 'block';
        loadQuiz();
    } else {
        alert('Per favore, inserisci un nome.');
    }
});

// Inizializza la leaderboard
updateLeaderboard();
