import { backend } from 'declarations/backend';

async function loadJobs() {
    try {
        const jobs = await backend.getAllJobs();
        const jobList = document.getElementById('jobList');

        jobs.forEach(job => {
            const jobElement = document.createElement('article');
            jobElement.className = 'job';
            jobElement.innerHTML = `
                <h2>${job.name}</h2>
                <p>${job.description}</p>
                <h3>Strengths:</h3>
                <ul>
                    ${job.strengths.map(strength => `<li>${strength}</li>`).join('')}
                </ul>
                <h3>Weaknesses:</h3>
                <ul>
                    ${job.weaknesses.map(weakness => `<li>${weakness}</li>`).join('')}
                </ul>
            `;
            jobList.appendChild(jobElement);
        });
    } catch (error) {
        console.error("Failed to load jobs:", error);
    }
}

window.addEventListener('load', loadJobs);
