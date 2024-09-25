export const idlFactory = ({ IDL }) => {
  const Job = IDL.Record({
    'weaknesses' : IDL.Vec(IDL.Text),
    'strengths' : IDL.Vec(IDL.Text),
    'name' : IDL.Text,
    'description' : IDL.Text,
  });
  return IDL.Service({
    'addJob' : IDL.Func([Job], [], []),
    'getAllJobs' : IDL.Func([], [IDL.Vec(Job)], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
