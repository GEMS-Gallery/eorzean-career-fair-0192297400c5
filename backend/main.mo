import Array "mo:base/Array";
import Text "mo:base/Text";

actor {
  // Define the Job type
  public type Job = {
    name: Text;
    description: Text;
    strengths: [Text];
    weaknesses: [Text];
  };

  // Store jobs in a stable variable
  stable var jobs: [Job] = [
    {
      name = "Paladin";
      description = "A tank job that excels in defensive capabilities and party protection.";
      strengths = ["High defense", "Party-wide damage mitigation", "Healing abilities"];
      weaknesses = ["Lower damage output", "Less mobility compared to other tanks"];
    },
    {
      name = "Warrior";
      description = "A tank job known for its high HP and self-healing abilities.";
      strengths = ["High HP", "Strong self-healing", "Burst damage potential"];
      weaknesses = ["Fewer party mitigation tools", "Reliance on healing abilities for survival"];
    },
    {
      name = "White Mage";
      description = "A pure healer job with powerful healing spells and some offensive capabilities.";
      strengths = ["Strong single-target and AoE healing", "Powerful burst healing", "Decent damage output for a healer"];
      weaknesses = ["Limited mobility", "Fewer damage mitigation tools compared to other healers"];
    },
    {
      name = "Black Mage";
      description = "A powerful magic DPS job that deals high damage at the cost of mobility.";
      strengths = ["Very high magical damage output", "Strong AoE capabilities"];
      weaknesses = ["Low mobility", "Long cast times", "Fragile if targeted"];
    },
    {
      name = "Dragoon";
      description = "A melee DPS job known for its jumping abilities and piercing damage.";
      strengths = ["High single-target damage", "Party buff abilities", "Good mobility with jumps"];
      weaknesses = ["Animation locks on jump abilities", "Relatively strict rotation"];
    }
  ];

  // Query to get all jobs
  public query func getAllJobs() : async [Job] {
    jobs
  };

  // Update call to add a new job
  public func addJob(newJob: Job) : async () {
    jobs := Array.append(jobs, [newJob]);
  };
}
