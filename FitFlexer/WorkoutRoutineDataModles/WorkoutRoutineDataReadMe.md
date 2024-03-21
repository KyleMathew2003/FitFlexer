# WorkoutRoutineDataModels

Contains data models for the workouts - for displaying the info of each of exercises (ExerciseModel.swift), to group these into workouts (WorkoutRoutineModel.swift), to group these workouts into Routines (SplitModel.swift) and finally, a model to record an tabulate each workout done by the user (PerformWorkoutModel.swift)

  
### ExerciseModel.swift 
This models out the relevant exercises, with:
    - **Name** *(String)*
    - **Type** *(String)*: cardio vs strength *(right now)*
    - **User Frequency** *(Int)* How many times the specific user did this exercise
    - **Overall Usage** *(Int)* How many times all users did this exercise
    - **Rating**: *(Int8)* Defaults to -1
    - *(optional)* **History** *(ChartDataModel)* Timestamped Weight/Length of the excercise *(for charting)* 

### WorkoutRoutineModel.swift
This groups exercises to a workout routine, with:
    - **Workouts** *([ExerciseModel])*
    - **Name** *(String)*
    - **User Frequency** *(Int)* How many times the specific user did this workout routine
    - **Overall Usage** *(Int)* How many times all users did this workout routine
    - **Rating**: *(Int8)* Defaults to -1
    - *(optional)* **History** *(ChartDataModel)* Timestamped (Total weight lifted and Length of cardio) of the workout *(for charting)*

### SplitModel.swift
This groups workout routines into overall programs
    - **WorkoutRoutines** *([WorkoutRoutineModel])*
    - **Name** *(String)*
    - **User Frequency** *(Int)* How many times the specific user did this workout routine
    - **Overall Usage** *(Int)* How many times all users did this workout routine
    - **Rating**: *(Int8)* Defaults to -1
    - *(optional)* **History** *(ChartDataModel)* Timestamped consistency of working out *(for charting)*
    
    



LATER add EXP and RANK and DAILY STREAK based on routine requisites 
