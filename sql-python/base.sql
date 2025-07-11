SELECT * FROM datos_iniciales;
SELECT * FROM datos_trabajo;
SELECT * FROM datos_q6;
SELECT * FROM datos_personales;
-- SELECT * FROM salarios_nuevo; PENDIENTE: eliminar esta tabla (solo se creo para manejar el update de salario VARCHAR >> salario INT)

-- DELETE de prueba con una fila
DELETE FROM datos_iniciales WHERE id_encuestado = '62a33b3db4da29969c62df3d'

-- ALTER de algunos campos para que cumplieran con los caracteres que se registraron originalmente
ALTER TABLE datos_iniciales ALTER COLUMN etnia varchar(255)

--------------------------------------------------
-- INSERTAR DATOS CORRECTAMENTE EN CADA TABLA --
--------------------------------------------------

-- INSERT de valores iniciales (carga inicial de datos, posteriormente se creo cada tabla por separado)
INSERT INTO datos_iniciales (id_encuestado, fecha_hecha, hora_hecha, duracion, 
cargo, cambio_carrera, salario, industria, lenguaje, q6_salario, q6_worklife, 
q6_coworkers, q6_gestion, q6_ascenso, q6_aprendizaje, dificultad, modalidad, 
genero, edad, pais, educacion, etnia) VALUES
('62a33b3db4da29969c62df3d', '2022-06-10', '8:38', '00:00:44', 'Data Analyst', 'Yes', '106k-125k', 'Healthcare', 'Python', 9, 9, 7, 5, 5, 7, 'Very Difficult', 'Remote Work', 'Male', 26, 'United States', NULL, 'White or Caucasian'),
('62a33ba1bae91e4b8b82e35c', '2022-06-10', '8:40', '00:01:30', 'Data Analyst', 'No', '41k-65k', 'Finance', 'R', 1, 2, 5, 2, 1, 3, 'Very Difficult', 'Remote Work', 'Male', 36, 'Canada', NULL, 'Asian or Asian American'),
('62a33c2cbc6861bf3176bec1', '2022-06-10', '8:42', '00:02:18', 'Data Engineer', 'No', '0-40k', 'Other (Please Specify):Clean Energy', 'Python', 0, 8, 7, 5, 7, 7, 'Easy', 'Good Work/Life Balance', 'Male', 23, 'Other (Please Specify):Nigeria', NULL, 'Black or African American'),
('62a33c8624a26260273822f9', '2022-06-10', '8:43', '00:02:10', 'Other (Please Specify):Analytics Consultant ', 'Yes', '150k-225k', 'Finance', 'R', 10, 6, 7, 10, 7, 10, 'Very Easy', 'Remote Work', 'Female', 35, 'Canada', NULL, 'White or Caucasian'),
('62a33c91f3072dd892621e03', '2022-06-10', '8:44', '00:01:51', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'R', 1, 4, 4, 4, 0, 1, 'Difficult', 'Better Salary', 'Male', 44, 'United States', NULL, 'Black or African American'),
('62a33cb6cf25554317300177', '2022-06-10', '8:44', '00:02:34', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Coworking space ', 'Python', 2, 3, 3, 3, 3, 2, 'Difficult', 'Good Work/Life Balance', 'Male', 33, 'Other (Please Specify):Republic democratic of Congo ', NULL, 'Black or African American'),
('62a33cb72e54c9003e531c65', '2022-06-10', '8:44', '00:01:15', 'Data Scientist', 'Yes', '0-40k', 'Finance', 'Python', 0, 6, 6, 6, 6, 5, 'Difficult', 'Better Salary', 'Male', 24, 'Other (Please Specify)', NULL, 'Black or African American'),
('62a33cd30f8c8599d5af0f8f', '2022-06-10', '8:45', '00:01:25', 'Data Engineer', 'Yes', '125k-150k', 'Other (Please Specify):Retail', 'Other:SQL', 10, 5, 5, 5, 5, 9, 'Neither easy nor difficult', 'Remote Work', 'Male', 35, 'United States', NULL, 'Asian or Asian American'),
('62a33cd3cf255543173001d9', '2022-06-10', '8:45', '00:02:10', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'R', 4, 4, 4, 4, 5, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 35, 'United States', NULL, 'Asian or Asian American'),
('62a33cd8bc6861bf3176c05f', '2022-06-10', '8:45', '00:01:27', 'Data Analyst', 'Yes', '41k-65k', 'Telecommunication', 'Python', 2, 0, 3, 3, 0, 4, 'Very Difficult', 'Better Salary', 'Male', 28, 'United States', NULL, 'Hispanic or Latino'),
('62a33ce918134ddc75ce8c30', '2022-06-10', '8:45', '00:01:29', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Logistics', 'Python', 10, 10, 8, 8, 8, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 37, 'Canada', NULL, 'White or Caucasian'),
('62a33cf30a77c1a77f65baa2', '2022-06-10', '8:45', '00:02:31', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Igaming', 'Python', 3, 8, 10, 10, 7, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 32, 'Other (Please Specify):Serbia', NULL, 'White or Caucasian'),
('62a33d15f408bae018ed370d', '2022-06-10', '8:46', '00:03:20', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'R', 1, 10, 9, 9, 5, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 34, 'Other (Please Specify):Argentina', NULL, 'Other (Please Specify):Latino with Italian roots'),
('62a33d1ebae91e4b8b82e707', '2022-06-10', '8:46', '00:00:55', 'Data Scientist', 'Yes', '0-40k', 'Education', 'Python', 3, 10, 10, 6, 7, 8, 'Easy', 'Good Work/Life Balance', 'Male', 30, 'United Kingdom', NULL, 'White or Caucasian'),
('62a33d4624a26260273824c4', '2022-06-10', '8:47', '00:01:24', 'Data Analyst', 'No', '41k-65k', 'Construction', 'R', 4, 5, 5, 5, 4, 5, 'Neither easy nor difficult', 'Good Culture', 'Male', 31, 'United States', NULL, 'White or Caucasian'),
('62a33d5c0f8c8599d5af107c', '2022-06-10', '8:47', '00:00:47', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 4, 10, 7, 7, 7, 5, 'Difficult', 'Good Culture', 'Male', 29, 'United States', NULL, 'White or Caucasian'),
('62a33d850f8c8599d5af10cb', '2022-06-10', '8:48', '00:01:06', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 1, 2, 4, 2, 2, 2, 'Neither easy nor difficult', 'Better Salary', 'Male', 22, 'Other (Please Specify):Niger', NULL, 'Black or African American'),
('62a33d9bf8f7561645852496', '2022-06-10', '8:48', '00:01:04', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Retail', 'Python', 1, 3, 2, 2, 4, 1, 'Difficult', 'Better Salary', 'Male', 23, 'United States', NULL, 'Black or African American'),
('62a33dbdd8c00e9f5419cd65', '2022-06-10', '8:49', '00:01:05', 'Student/Looking/None', 'No', '41k-65k', 'Tech', 'R', 7, 8, 8, 6, 8, 3, 'Very Difficult', 'Better Salary', 'Female', 26, 'Canada', NULL, 'Asian or Asian American'),
('62a33de124a26260273826b2', '2022-06-10', '8:49', '00:01:21', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Aviation', 'Python', 1, 1, 1, 1, 2, 0, 'Very Difficult', 'Better Salary', 'Male', 28, 'Other (Please Specify):Nigeria', NULL, 'Black or African American'),
('62a33dedd8c00e9f5419ce2b', '2022-06-10', '8:49', '00:01:23', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 5, 5, 5, 5, 5, 5, 'Easy', 'Remote Work', 'Male', 29, 'Other (Please Specify):Kenya', NULL, 'Black or African American'),
('62a33dfbd8c00e9f5419ceda', '2022-06-10', '8:50', '00:01:35', 'Data Analyst', 'Yes', '106k-125k', 'Tech', 'Other:Mostly use sql but that�s not programming language..', 10, 5, 10, 6, 10, 10, 'Neither easy nor difficult', 'Remote Work', 'Female', 31, 'United States', NULL, 'White or Caucasian'),
('62a33e38f3072dd8926221d3', '2022-06-10', '8:51', '00:01:25', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 5, 6, 8, 8, 7, 1, 'Neither easy nor difficult', 'Remote Work', 'Male', 28, 'Other (Please Specify):Azerbaijan', NULL, 'White or Caucasian'),
('62a33e54d8c00e9f5419cfe9', '2022-06-10', '8:51', '00:01:47', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 4, 4, 4, 4, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 32, 'Other (Please Specify):Argentina', NULL, 'Hispanic or Latino'),
('62a33e62575fa3a5ae88aabf', '2022-06-10', '8:51', '00:02:14', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 7, 8, 8, 8, 3, 8, 'Easy', 'Better Salary', 'Male', 24, 'Other (Please Specify):Sudan', NULL, 'Black or African American'),
('62a33e63cec54911e9ca4f99', '2022-06-10', '8:51', '00:02:21', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 4, 6, 6, 6, 7, 7, 'Easy', 'Good Work/Life Balance', 'Male', 31, 'India', NULL, 'Asian or Asian American'),
('62a33e72bae91e4b8b82ea1a', '2022-06-10', '8:52', '00:02:07', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Insurance', 'Other:SQL', 7, 10, 5, 5, 5, 2, 'Difficult', 'Other (Please Specify):Responsibilities', 'Male', 23, 'United States', NULL, 'White or Caucasian'),
('62a33e890f8c8599d5af13b9', '2022-06-10', '8:52', '00:01:20', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Energy', 'Python', 1, 6, 9, 1, 0, 2, 'Difficult', 'Remote Work', 'Female', 33, 'United States', NULL, 'Asian or Asian American'),
('62a33e8bf8d5efcc22f7c79a', '2022-06-10', '8:52', '00:01:34', 'Data Analyst', 'No', '86k-105k', 'Healthcare', 'Other:Qlik sense script', 6, 7, 7, 7, 7, 4, 'Very Easy', 'Better Salary', 'Male', 43, 'United States', NULL, 'White or Caucasian'),
('62a33e90cec54911e9ca5031', '2022-06-10', '8:52', '00:01:34', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Oil and gas', 'R', 0, 0, 5, 0, 0, 0, 'Very Difficult', 'Remote Work', 'Female', 23, 'Other (Please Specify):Nigeria', NULL, 'Other (Please Specify):African'),
('62a33e9df8f756164585277b', '2022-06-10', '8:52', '00:01:47', 'Student/Looking/None', 'Yes', '41k-65k', 'Finance', 'Python', 10, 7, 10, 10, 5, 3, 'Very Difficult', 'Good Work/Life Balance', 'Male', 31, 'United States', NULL, 'Black or African American'),
('62a33eb6bc6861bf3176c5a3', '2022-06-10', '8:53', '00:01:38', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 5, 6, 7, 5, 4, 4, 'Neither easy nor difficult', 'Other (Please Specify):Development', 'Male', 31, 'United Kingdom', NULL, 'White or Caucasian'),
('62a33ee0bae91e4b8b82eaec', '2022-06-10', '8:53', '00:03:30', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify)', 'Python', 8, 7, 8, 7, 7, 7, 'Difficult', 'Good Work/Life Balance', 'Male', 25, 'India', NULL, 'Asian or Asian American'),
('62a33ee80f8c8599d5af14b7', '2022-06-10', '8:54', '00:01:37', 'Data Engineer', 'No', '125k-150k', 'Tech', 'Other:SQL', 8, 10, 10, 9, 9, 9, 'Easy', 'Better Salary', 'Male', 43, 'United States', NULL, 'White or Caucasian'),
('62a33efe0a77c1a77f65bf1e', '2022-06-10', '8:54', '00:02:08', 'Data Analyst', 'No', '41k-65k', 'Finance', 'Python', 2, 3, 5, 5, 5, 5, 'Difficult', 'Better Salary', 'Female', 26, 'Canada', NULL, 'Other (Please Specify):South Asian'),
('62a33f0ef408bae018ed3aeb', '2022-06-10', '8:54', '00:03:54', 'Other (Please Specify):FP&A Analyst', 'No', '41k-65k', 'Other (Please Specify):Automotive', 'Python', 5, 10, 8, 8, 8, 7, 'Neither easy nor difficult', 'Remote Work', 'Male', 32, 'Other (Please Specify):Japan', NULL, 'White or Caucasian'),
('62a33f17f8f7561645852867', '2022-06-10', '8:54', '00:02:28', 'Other (Please Specify):BI Developer ', 'No', '0-40k', 'Tech', 'Python', 2, 9, 7, 7, 5, 6, 'Difficult', 'Better Salary', 'Male', 31, 'Other (Please Specify):Greece', NULL, 'White or Caucasian'),
('62a33f52bc6861bf3176c72c', '2022-06-10', '8:55', '00:01:33', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'Other:sql', 3, 5, 6, 4, 4, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'United States', NULL, 'White or Caucasian'),
('62a33f56cf255543173005e9', '2022-06-10', '8:55', '00:00:56', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Automotive ', 'Python', 3, 1, 3, 2, 3, 1, 'Neither easy nor difficult', 'Good Culture', 'Male', 24, 'Other (Please Specify):Per� ', NULL, 'Hispanic or Latino'),
('62a33f5a5d257a28a30d7bb5', '2022-06-10', '8:55', '00:02:38', 'Student/Looking/None', 'Yes', '41k-65k', 'Construction', 'Python', 2, 0, 2, 2, 0, 0, 'Very Difficult', 'Remote Work', 'Male', 34, 'United States', NULL, 'White or Caucasian'),
('62a33fa5cec54911e9ca51f1', '2022-06-10', '8:57', '00:01:52', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Utili', 'Other:Power bi', 5, 6, 6, 5, 4, 6, 'Very Difficult', 'Better Salary', 'Male', 42, 'Other (Please Specify):Australia', NULL, 'Other (Please Specify):Indian'),
('62a33fcb575fa3a5ae88ad59', '2022-06-10', '8:57', '00:02:03', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Not working yet', 'JavaScript', 0, 0, 0, 0, 0, 0, 'Difficult', 'Remote Work', 'Female', 40, 'United States', NULL, 'Asian or Asian American'),
('62a33fcf18134ddc75ce91c3', '2022-06-10', '8:57', '00:02:32', 'Student/Looking/None', 'No', '41k-65k', 'Telecommunication', 'Python', 3, 1, 3, 4, 0, 3, 'Easy', 'Good Work/Life Balance', 'Male', 43, 'Other (Please Specify):Spain', NULL, 'White or Caucasian'),
('62a34006d8c00e9f5419d341', '2022-06-10', '8:58', '00:02:39', 'Student/Looking/None', 'Yes', '0-40k', 'Construction', 'Python', 0, 0, 0, 0, 0, 0, 'Very Difficult', 'Better Salary', 'Male', 23, 'Other (Please Specify):Kenya ', NULL, 'Other (Please Specify):Kenyan African '),
('62a34020575fa3a5ae88ade0', '2022-06-10', '8:59', '00:01:11', 'Student/Looking/None', 'Yes', '0-40k', 'Education', 'Python', 5, 5, 3, 5, 2, 6, 'Difficult', 'Better Salary', 'Male', 23, 'Other (Please Specify):Japan', NULL, 'Asian or Asian American'),
('62a34038b4da29969c62eafe', '2022-06-10', '8:59', '00:03:55', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Manufa', 'Python', 8, 6, 2, 3, 6, 7, 'Neither easy nor difficult', 'Other (Please Specify):Strong organizational data strategy, high-performing team', 'Male', 28, 'United States', NULL, 'White or Caucasian'),
('62a3406b575fa3a5ae88ae78', '2022-06-10', '9:00', '00:01:25', 'Data Analyst', 'No', '66k-85k', 'Finance', 'Other:SQL', 5, 7, 1, 1, 0, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 32, 'United States', NULL, 'White or Caucasian'),
('62a340cab4da29969c62ec01', '2022-06-10', '9:02', '00:02:47', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Manufacturing (Chemicals)', 'R', 7, 8, 10, 8, 9, 9, 'Difficult', 'Remote Work', 'Female', 41, 'United States', NULL, 'White or Caucasian'),
('62a340d62e54c9003e5324b4', '2022-06-10', '9:02', '00:00:56', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 5, 6, 6, 6, 6, 6, 'Neither easy nor difficult', 'Remote Work', 'Male', 33, 'United Kingdom', 'High School', 'White or Caucasian'),
('62a340e10a77c1a77f65c2e7', '2022-06-10', '9:02', '00:01:57', 'Other (Please Specify):Manager, Business Intelligence Develop', 'Yes', '150k-225k', 'Tech', 'Python', 10, 8, 9, 8, 8, 10, 'Easy', 'Good Work/Life Balance', 'Male', 38, 'United States', NULL, 'Hispanic or Latino'),
('62a340f5bc6861bf3176caa4', '2022-06-10', '9:02', '00:02:32', 'Data Analyst', 'No', '0-40k', 'Tech', 'Other:sql', 8, 8, 8, 8, 5, 10, 'Easy', 'Better Salary', 'Female', 22, 'India', NULL, 'Other (Please Specify):Indian'),
('62a34117cec54911e9ca54e7', '2022-06-10', '9:03', '00:01:59', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Currently studying . Previously worked in Power Generation', 'R', 1, 3, 6, 6, 6, 9, 'Difficult', 'Remote Work', 'Male', 36, 'Other (Please Specify):Barbados', 'Bachelors', 'Black or African American'),
('62a3413a5d257a28a30d8074', '2022-06-10', '9:03', '00:01:18', 'Data Engineer', 'No', '66k-85k', 'Finance', 'Python', 2, 1, 1, 1, 3, 7, 'Easy', 'Remote Work', 'Female', 28, 'United States', 'Masters', 'Asian or Asian American'),
('62a341a1f3072dd8926229a5', '2022-06-10', '9:05', '00:08:11', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Not working at the moment, but previously I have been into Education industry', 'Other:If SQL is categorised as a programming language then I will definitely say SQL. Since I am still learning, I can''t give a definite answer in relation to the abover mentioned but for the sake of choosing I will say R then followed by python', NULL, NULL, NULL, NULL, NULL, 7, 'Very Easy', 'Other (Please Specify):I would say a combination of good work/life balance with a better pay and the exposure to a workplace that supposed growth', 'Male', 30, 'Other (Please Specify):South Africa', NULL, 'Other (Please Specify):Black African, Zimbabwean Citizen'),
('62a341b0f8f7561645852d1d', '2022-06-10', '9:05', '00:01:44', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 6, 6, 6, 6, 5, 6, 'Difficult', 'Other (Please Specify):Currently very happy with where I am.', 'Female', 24, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a341e8f8d5efcc22f7d002', '2022-06-10', '9:06', '00:01:58', 'Other (Please Specify):Business Analyst ', 'No', '41k-65k', 'Other (Please Specify):Third Party Logistics ', 'C/C++', 3, 6, 7, 7, 0, 3, 'Very Difficult', 'Better Salary', 'Male', 29, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34210cf25554317300c02', '2022-06-10', '9:07', '00:02:15', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 4, 9, 10, 9, 9, 10, 'Easy', 'Better Salary', 'Male', 29, 'Other (Please Specify):Colombia', 'Associates', 'Hispanic or Latino'),
('62a3424eb4da29969c62eedd', '2022-06-10', '9:08', '00:02:04', 'Other (Please Specify):Business Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Automotive', 'Python', 6, 8, 8, 7, 9, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 38, 'Other (Please Specify):Germany', 'Masters', 'White or Caucasian'),
('62a34256bae91e4b8b82f16d', '2022-06-10', '9:08', '00:01:46', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Other:I don�t know any', 3, 5, 4, 3, 3, 3, 'Difficult', 'Good Work/Life Balance', 'Male', 31, 'Other (Please Specify):Bulgaria', 'Masters', 'White or Caucasian'),
('62a3426cf408bae018ed409b', '2022-06-10', '9:09', '00:01:33', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 1, 4, 5, 5, 1, 1, 'Difficult', 'Better Salary', 'Male', 25, 'United States', 'Masters', 'White or Caucasian'),
('62a34272f8d5efcc22f7d15f', '2022-06-10', '9:09', '00:01:09', 'Data Analyst', 'No', '66k-85k', 'Telecommunication', 'Python', 4, 6, 4, 5, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'United States', 'Masters', 'White or Caucasian'),
('62a34340bc6861bf3176d05b', '2022-06-10', '9:12', '00:04:03', 'Other (Please Specify):Business Intelligence Consultant', 'Yes', '41k-65k', 'Tech', 'Python', 6, 7, 4, 3, 9, 8, 'Difficult', 'Better Salary', 'Male', 28, 'Other (Please Specify):Turkey', 'Bachelors', 'White or Caucasian'),
('62a34383b4da29969c62f1be', '2022-06-10', '9:13', '00:01:03', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 7, 5, 8, 0, 0, 0, 'Neither easy nor difficult', 'Good Culture', 'Female', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a34389cec54911e9ca5a22', '2022-06-10', '9:13', '00:01:01', 'Data Engineer', 'No', '0-40k', 'Tech', 'R', 2, 3, 2, 5, 5, 7, 'Neither easy nor difficult', 'Remote Work', 'Male', 21, 'Other (Please Specify):Spain', 'Masters', 'Hispanic or Latino'),
('62a343a22e54c9003e532a2a', '2022-06-10', '9:14', '00:02:43', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Energy', 'Python', 4, 4, 4, 4, 5, 6, 'Neither easy nor difficult', 'Remote Work', 'Male', 29, 'Other (Please Specify):France', 'Bachelors', 'Other (Please Specify):Human'),
('62a343d9f3072dd892622fe4', '2022-06-10', '9:15', '00:03:15', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 5, 6, 7, 7, 7, 6, 'Difficult', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a34400d8c00e9f5419dc2b', '2022-06-10', '9:15', '00:01:24', 'Data Analyst', 'No', '41k-65k', 'Tech', 'Python', 6, 6, 6, 6, 3, 5, 'Difficult', 'Good Culture', 'Male', 27, 'Other (Please Specify):Germany', 'Masters', 'Black or African American'),
('62a34425f8d5efcc22f7d525', '2022-06-10', '9:16', '00:01:28', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 9, 10, 8, 9, 9, 'Easy', 'Better Salary', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a34449575fa3a5ae88b637', '2022-06-10', '9:16', '00:02:36', 'Other (Please Specify):Sr. Supply Chain Analyst ', 'No', '86k-105k', 'Other (Please Specify):Food & Beverage ', 'R', 4, 3, 3, 5, 5, 5, 'Difficult', 'Better Salary', 'Male', 32, 'United States', 'Masters', 'Asian or Asian American'),
('62a3445dcf255543173011e1', '2022-06-10', '9:17', '00:02:41', 'Student/Looking/None', 'Yes', '106k-125k', 'Healthcare', 'Python', 5, 5, 7, 5, 7, 7, 'Neither easy nor difficult', 'Remote Work', 'Male', 22, 'India', 'Bachelors', 'Asian or Asian American'),
('62a3447a575fa3a5ae88b6c0', '2022-06-10', '9:17', '00:04:14', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 2, 9, 9, 8, 6, 2, 'Easy', 'Better Salary', 'Male', 25, 'Other (Please Specify):Thailand', 'Bachelors', 'Asian or Asian American'),
('62a3449f7dc029e2d66bf5d1', '2022-06-10', '9:18', '00:01:15', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'Python', 2, 8, 6, 6, 5, 5, 'Neither easy nor difficult', 'Remote Work', 'Female', 36, 'Other (Please Specify):Germany', 'Masters', 'White or Caucasian'),
('62a344c5f408bae018ed4806', '2022-06-10', '9:19', '00:02:21', 'Data Analyst', 'Yes', '106k-125k', 'Tech', 'Other:SQL', 10, 6, 9, 5, 8, 7, 'Easy', 'Good Work/Life Balance', 'Female', 27, 'United States', 'Bachelors', 'White or Caucasian'),
('62a344c6f8d5efcc22f7d6e1', '2022-06-10', '9:19', '00:02:17', 'Other (Please Specify):Business analyst ', 'Yes', '0-40k', 'Tech', 'Python', 5, 5, 5, 5, 5, 1, 'Neither easy nor difficult', 'Other (Please Specify):My passion is to become a Data analyst ', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a344e1f3072dd892623328', '2022-06-10', '9:19', '00:01:32', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Other:Sql', 2, 3, 3, 3, 3, 6, 'Very Difficult', 'Better Salary', 'Male', 26, 'Other (Please Specify):Netherlands', 'Bachelors', 'Black or African American'),
('62a3450424a262602738357f', '2022-06-10', '9:20', '00:01:19', 'Other (Please Specify):Director of Data Analytics', 'No', '86k-105k', 'Healthcare', 'Python', 9, 10, 10, 10, 10, 10, 'Very Easy', 'Good Work/Life Balance', 'Female', 33, 'United States', 'PhD', 'Hispanic or Latino'),
('62a3452818134ddc75ce9e1b', '2022-06-10', '9:20', '00:01:33', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Automotive', 'Python', 3, 5, 3, 3, 5, 5, 'Easy', 'Better Salary', 'Male', 27, 'Other (Please Specify):Turkey', 'Masters', 'White or Caucasian'),
('62a345490a77c1a77f65cc5b', '2022-06-10', '9:21', '00:01:38', 'Data Analyst', 'Yes', '41k-65k', 'Education', 'R', 3, 6, 5, 4, 3, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 42, 'United States', 'Associates', 'White or Caucasian'),
('62a3455bbc6861bf3176d57a', '2022-06-10', '9:21', '00:02:36', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 6, 7, 8, 7, 7, 8, 'Easy', 'Good Work/Life Balance', 'Male', 29, 'Other (Please Specify):Spain', 'Masters', 'White or Caucasian'),
('62a3457bf8d5efcc22f7da17', '2022-06-10', '9:22', '00:01:08', 'Data Analyst', 'No', '125k-150k', 'Tech', 'Python', 4, 7, 6, 4, 2, 4, 'Easy', 'Better Salary', 'Female', 27, 'United States', 'Masters', 'Asian or Asian American'),
('62a345b2bae91e4b8b82fad6', '2022-06-10', '9:22', '00:01:41', 'Student/Looking/None', 'No', '41k-65k', 'Healthcare', 'Python', 0, 10, 10, 10, 4, 2, 'Neither easy nor difficult', 'Remote Work', 'Female', 39, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a345c47dc029e2d66bf80a', '2022-06-10', '9:23', '00:01:36', 'Data Analyst', 'Yes', '41k-65k', 'Telecommunication', 'Python', 6, 6, 7, 5, 6, 7, 'Difficult', 'Good Culture', 'Male', 31, 'Other (Please Specify):Denmark', 'Masters', 'White or Caucasian'),
('62a345e25d257a28a30d8b43', '2022-06-10', '9:23', '00:03:09', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Marketing', 'Python', 7, 7, 5, 9, 7, 8, 'Easy', 'Good Work/Life Balance', 'Male', 29, 'Other (Please Specify):Brazil', 'Bachelors', 'Hispanic or Latino'),
('62a34646f8d5efcc22f7dc5c', '2022-06-10', '9:25', '00:01:22', 'Data Analyst', 'Yes', '66k-85k', 'Education', 'R', 7, 7, 7, 7, 4, 7, 'Easy', 'Remote Work', 'Male', 31, 'United States', 'Masters', 'White or Caucasian'),
('62a34687f408bae018ed4c52', '2022-06-10', '9:26', '00:01:30', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 10, 9, 9, 10, 9, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 30, 'Other (Please Specify):Mexico', 'Masters', 'Hispanic or Latino'),
('62a346a37dc029e2d66bfa6d', '2022-06-10', '9:26', '00:03:05', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 7, 8, 6, 5, 5, 9, 'Difficult', 'Better Salary', 'Male', 33, 'Other (Please Specify):Mexico', 'Masters', 'Hispanic or Latino'),
('62a346a95d257a28a30d8cb9', '2022-06-10', '9:27', '00:00:58', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Retail', 'Python', 7, 8, 9, 7, 7, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a346b4bc6861bf3176d7ce', '2022-06-10', '9:27', '00:01:09', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'R', 0, 0, 0, 0, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 23, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a346cef8f756164585385b', '2022-06-10', '9:27', '00:01:51', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Advertising', 'Other:Dont require', 4, 4, 3, 3, 5, 6, 'Very Difficult', 'Better Salary', 'Male', 33, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a346d724a2626027383abd', '2022-06-10', '9:27', '00:02:29', 'Other (Please Specify):Business Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Logistics', 'Python', 7, 9, 9, 8, 8, 9, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 35, 'Other (Please Specify):Chile', 'Bachelors', 'Hispanic or Latino'),
('62a346d90a77c1a77f65d08d', '2022-06-10', '9:27', '00:02:39', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Staffing and Recruting ', 'Python', 6, 8, 5, NULL, 6, 9, 'Neither easy nor difficult', 'Remote Work', 'Female', 42, 'Other (Please Specify):Greece', 'Masters', 'White or Caucasian'),
('62a34726f8d5efcc22f7dec7', '2022-06-10', '9:29', '00:01:14', 'Data Analyst', 'No', '66k-85k', 'Tech', 'Python', 3, 4, 2, 1, 0, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3476c5d257a28a30d8e6d', '2022-06-10', '9:30', '00:03:00', 'Data Analyst', 'No', '86k-105k', 'Other (Please Specify):Automotive', 'Python', 5, 4, 5, 4, 3, 6, 'Neither easy nor difficult', 'Other (Please Specify):Different job title, either product owner or consulting', 'Male', 23, 'United States', 'Bachelors', 'White or Caucasian'),
('62a347b4f8f7561645853a98', '2022-06-10', '9:31', '00:02:02', 'Other (Please Specify):Learning Management Specialist', 'No', '41k-65k', 'Healthcare', 'JavaScript', 2, 4, 6, 5, 3, 4, 'Easy', 'Better Salary', 'Female', 51, 'United States', 'Bachelors', 'Black or African American'),
('62a347f6b4da29969c62fb79', '2022-06-10', '9:32', '00:01:45', 'Data Analyst', 'No', '0-40k', 'Telecommunication', 'Other', 1, 4, 4, 3, 2, 6, 'Very Difficult', 'Better Salary', 'Male', 30, 'United Kingdom', 'Bachelors', 'Black or African American'),
('62a3483018134ddc75cea4e6', '2022-06-10', '9:33', '00:01:41', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 8, 9, 9, 9, 9, 8, 'Very Difficult', 'Better Salary', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a348650f8c8599d5af2b77', '2022-06-10', '9:34', '00:01:06', 'Other (Please Specify):Research Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Advertising', 'R', 3, 5, 5, 6, 3, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a3489318134ddc75cea659', '2022-06-10', '9:35', '00:01:06', 'Student/Looking/None', 'Yes', '41k-65k', 'Tech', 'Python', 6, 6, 6, 6, 6, 6, 'Easy', 'Good Culture', 'Male', 25, 'Other (Please Specify):Australia', 'Masters', 'Asian or Asian American'),
('62a348bf2e54c9003e533634', '2022-06-10', '9:35', '00:02:22', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 4, 4, 6, 4, 5, 6, 'Difficult', 'Better Salary', 'Female', 55, 'United States', 'Masters', 'Other (Please Specify):Race isn''t a thing'),
('62a348c2f3072dd892623c10', '2022-06-10', '9:36', '00:01:56', 'Data Analyst', 'No', '86k-105k', 'Other (Please Specify):Biotech', 'R', 8, 10, 8, 7, 8, 10, 'Very Easy', 'Remote Work', 'Female', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a348f2f8d5efcc22f7e2ba', '2022-06-10', '9:36', '00:01:10', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Consulting', 'Python', 9, 9, 9, 9, 7, 4, 'Difficult', 'Better Salary', 'Male', 25, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a349160a77c1a77f65d4db', '2022-06-10', '9:37', '00:00:28', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Consumer Elec', 'Python', 6, 9, 7, 6, 7, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'United States', 'Masters', 'White or Caucasian'),
('62a3493fb4da29969c62fe63', '2022-06-10', '9:38', '00:02:22', 'Other (Please Specify):Insights analyst', 'Yes', '41k-65k', 'Other (Please Specify):Consulting', 'Python', 8, 8, 9, 9, 10, 10, 'Very Easy', 'Better Salary', 'Male', 34, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a3496e575fa3a5ae88c4e6', '2022-06-10', '9:38', '00:03:18', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 8, 10, 9, 9, 10, 8, 'Neither easy nor difficult', 'Better Salary', 'Female', 28, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62a3498e575fa3a5ae88c554', '2022-06-10', '9:39', '00:01:55', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Semiconductor manufacturing', 'Other', 7, 9, 7, 8, 8, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'Other (Please Specify):Vietnam', 'Bachelors', 'Asian or Asian American'),
('62a34991b4da29969c62ff4b', '2022-06-10', '9:39', '00:01:15', 'Student/Looking/None', 'Yes', '0-40k', 'Healthcare', 'Python', 3, 7, 7, 7, 1, 2, 'Difficult', 'Better Salary', 'Male', 31, 'United States', 'Masters', 'Black or African American'),
('62a349bbf8f756164585400d', '2022-06-10', '9:40', '00:02:07', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Supply Chain - warehousing, transpiration and ', 'Other:Knowledge of Excel and SQL yet', 3, 6, 6, 6, 4, 4, 'Easy', 'Better Salary', 'Male', 25, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a349c7cec54911e9ca67c7', '2022-06-10', '9:40', '00:01:05', 'Data Analyst', 'Yes', '106k-125k', 'Finance', 'Python', 5, 1, 4, 3, 3, 4, 'Easy', 'Better Salary', 'Female', 38, 'United States', 'Bachelors', 'White or Caucasian'),
('62a349d5d8c00e9f5419ead2', '2022-06-10', '9:40', '00:01:32', 'Data Analyst', 'No', '41k-65k', 'Finance', 'Python', 5, 5, 5, 5, 4, 5, 'Neither easy nor difficult', 'Good Culture', 'Male', 30, 'Other (Please Specify):Netherlands', 'Bachelors', 'Hispanic or Latino'),
('62a349e6b4da29969c63000c', '2022-06-10', '9:40', '00:01:32', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'C/C++', 0, 0, 0, 2, 2, 5, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 25, 'India', 'Bachelors', 'Asian or Asian American'),
('62a34a03cec54911e9ca6869', '2022-06-10', '9:41', '00:01:08', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 1, 2, 1, 5, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 29, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62a34ab15d257a28a30d9589', '2022-06-10', '9:44', '00:04:27', 'Data Scientist', 'Yes', '150k-225k', 'Finance', 'Python', 7, 5, 3, 6, 4, 4, 'Difficult', 'Good Work/Life Balance', 'Male', 21, 'Other (Please Specify):Portugal', 'Masters', 'White or Caucasian'),
('62a34abc0f8c8599d5af31c5', '2022-06-10', '9:44', '00:02:00', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Distribution', 'Other:SQL', 5, 8, 8, 7, 6, 7, 'Very Easy', 'Remote Work', 'Female', 39, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a34b07cec54911e9ca6b6e', '2022-06-10', '9:45', '00:01:19', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify)', 'Python', 0, 0, 0, 0, 0, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):turkey', 'Bachelors', 'White or Caucasian'),
('62a34b0eb4da29969c6302ce', '2022-06-10', '9:45', '00:02:36', 'Other (Please Specify):Does a social media analyst count?', 'Yes', '86k-105k', 'Finance', 'Other:I don''t use programming in my role', 7, 9, 10, 6, 4, 4, 'Neither easy nor difficult', 'Other (Please Specify):Opportunity for advancement ', 'Female', 42, 'United States', 'Masters', 'Hispanic or Latino'),
('62a34b1b0f8c8599d5af328b', '2022-06-10', '9:46', '00:00:48', 'Data Analyst', 'No', '41k-65k', 'Tech', 'R', 10, 8, 9, 10, 10, 10, 'Easy', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34b5b5d257a28a30d96a6', '2022-06-10', '9:47', '00:01:20', 'Data Scientist', 'No', '86k-105k', 'Finance', 'Python', 8, 7, 6, 6, 5, 9, 'Neither easy nor difficult', 'Better Salary', 'Male', 22, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34b7ebae91e4b8b83076c', '2022-06-10', '9:47', '00:02:04', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Customer Service', 'Python', 1, 4, 4, 3, NULL, 5, 'Easy', 'Better Salary', 'Male', 23, 'Other (Please Specify):Colombia', 'High School', 'Hispanic or Latino'),
('62a34b99cec54911e9ca6e14', '2022-06-10', '9:48', '00:02:36', 'Data Engineer', 'Yes', '41k-65k', 'Other (Please Specify):Ecom', 'JavaScript', 6, 6, 6, 6, 6, 6, 'Difficult', 'Good Culture', 'Male', 25, 'Other (Please Specify):Egypt', 'High School', 'Other (Please Specify):Middleeas'),
('62a34bb0f3072dd892624210', '2022-06-10', '9:48', '00:01:05', 'Data Engineer', 'Yes', '66k-85k', 'Other (Please Specify):Consulti', 'Python', 5, 7, 7, 6, 6, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 45, 'Canada', 'Masters', 'White or Caucasian'),
('62a34bd0cf2555431730208b', '2022-06-10', '9:49', '00:01:29', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Other:Excel/SQL', 7, 3, 8, 6, 8, 8, 'Easy', 'Good Work/Life Balance', 'Male', 24, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34bd4f408bae018ed57bd', '2022-06-10', '9:49', '00:03:57', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):State Government', 'R', 1, 9, 6, 0, 0, 0, 'Difficult', 'Better Salary', 'Male', 25, 'United States', NULL, 'Black or African American'),
('62a34c66b4da29969c6305af', '2022-06-10', '9:51', '00:01:36', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Marketing', 'Python', 9, 8, 9, 9, 8, 8, 'Difficult', 'Good Work/Life Balance', 'Male', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34d1ff8f756164585465c', '2022-06-10', '9:54', '00:01:41', 'Data Analyst', 'No', '41k-65k', 'Tech', 'R', 4, 7, 8, 8, 5, 7, 'Easy', 'Better Salary', 'Male', 23, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a34d4118134ddc75ceb0ed', '2022-06-10', '9:55', '00:01:37', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Culture', 'Python', 1, 1, 1, 0, 0, 3, 'Difficult', 'Remote Work', 'Female', 42, 'United Kingdom', 'Masters', 'White or Caucasian'),
('62a34da0f408bae018ed5abd', '2022-06-10', '9:56', '00:01:30', 'Other (Please Specify):Educator', 'Yes', '41k-65k', 'Education', 'Other:unknown', 0, 0, 2, 0, 0, 0, 'Very Difficult', 'Good Work/Life Balance', 'Female', 42, 'United States', 'Bachelors', 'Black or African American'),
('62a34dbb5d257a28a30d9a61', '2022-06-10', '9:57', '00:01:26', 'Other (Please Specify):Business Analyst', 'No', '0-40k', 'Tech', 'Python', 0, 6, 5, 5, 3, 1, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'India', 'Masters', 'Asian or Asian American'),
('62a34e00f8f7561645854954', '2022-06-10', '9:58', '00:02:24', 'Data Analyst', 'Yes', '86k-105k', 'Tech', 'R', 8, 10, 10, 10, 2, 7, 'Easy', 'Remote Work', 'Male', 38, 'United States', 'Masters', 'White or Caucasian'),
('62a34e082e54c9003e534118', '2022-06-10', '9:58', '00:02:51', 'Other (Please Specify):Business Intelligence Engineer', 'No', '0-40k', 'Tech', 'Python', 5, 6, 6, 6, 6, 4, 'Easy', 'Better Salary', 'Male', 24, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62a34eb7bc6861bf3176e6d8', '2022-06-10', '10:01', '00:01:37', 'Data Analyst', 'Yes', '66k-85k', 'Education', 'R', 7, 10, 10, 10, 8, 10, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a34f2af8f7561645854c1c', '2022-06-10', '10:03', '00:01:06', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'Python', 1, 2, 8, 7, 0, 0, 'Difficult', 'Better Salary', 'Male', 21, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a34f3bf408bae018ed5e42', '2022-06-10', '10:03', '00:01:13', 'Data Analyst', 'Yes', '106k-125k', 'Healthcare', 'R', 10, 10, 10, 10, 10, 10, 'Very Easy', 'Good Culture', 'Male', 39, 'United States', 'Masters', 'White or Caucasian'),
('62a34fa418134ddc75ceb509', '2022-06-10', '10:05', '00:03:29', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 4, 5, 5, 5, 6, 8, 'Difficult', 'Good Work/Life Balance', 'Male', 23, 'Other (Please Specify):Pakistan', 'Bachelors', 'Asian or Asian American'),
('62a34fbacec54911e9ca776f', '2022-06-10', '10:05', '00:01:17', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Government', 'R', 1, 6, 4, 3, 5, 6, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 23, 'Other (Please Specify):Australia', 'Bachelors', 'White or Caucasian'),
('62a34fc3f3072dd892624a45', '2022-06-10', '10:05', '00:02:03', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Distribution', 'R', 8, 9, 8, 7, 7, 8, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a34ff1f408bae018ed601d', '2022-06-10', '10:06', '00:01:16', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Manufacturing', 'Python', 2, 6, 2, 3, 2, 2, 'Easy', 'Better Salary', 'Male', 26, 'Other (Please Specify):Ireland ', 'Masters', 'White or Caucasian'),
('62a34ff4f3072dd892624b32', '2022-06-10', '10:06', '00:02:18', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'R', 3, 6, 4, 6, 4, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 37, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3505bd8c00e9f5419f8df', '2022-06-10', '10:08', '00:01:22', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Python', 3, 5, 4, 5, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Female', 31, 'United States', 'Bachelors', 'White or Caucasian'),
('62a350f7f3072dd892624d05', '2022-06-10', '10:11', '00:02:03', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'C/C++', 5, 2, 4, 3, 3, 3, 'Difficult', 'Good Work/Life Balance', 'Female', 25, 'Other (Please Specify):South Africa', 'Bachelors', 'Black or African American'),
('62a35130f3072dd892624d9f', '2022-06-10', '10:12', '00:02:04', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 2, 6, 6, 5, 4, 5, 'Easy', 'Better Salary', 'Female', 26, 'Other (Please Specify):Poland', 'Bachelors', 'White or Caucasian'),
('62a351860a77c1a77f65e86b', '2022-06-10', '10:13', '00:01:28', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Other:SQL', 7, 8, 8, 8, 8, 7, 'Very Easy', 'Better Salary', 'Male', 30, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3519b24a262602738514a', '2022-06-10', '10:13', '00:01:39', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 9, 10, 10, 10, 7, 9, 'Neither easy nor difficult', 'Better Salary', 'Female', 39, 'United States', 'Bachelors', 'Black or African American'),
('62a35236b4da29969c631214', '2022-06-10', '10:16', '00:00:53', 'Other (Please Specify):Research Associate ', 'No', '0-40k', 'Education', 'Python', 1, 1, 1, 0, 0, 2, 'Easy', 'Good Work/Life Balance', 'Female', 28, 'India', 'Masters', 'Asian or Asian American'),
('62a352a32e54c9003e534981', '2022-06-10', '10:18', '00:01:46', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Other:SQL', 8, 8, 7, 7, 10, 10, 'Very Easy', 'Good Work/Life Balance', 'Male', 22, 'United States', 'Bachelors', 'Other (Please Specify):Mixed ( Caucasian / African-American )'),
('62a352f00a77c1a77f65eae7', '2022-06-10', '10:19', '00:02:45', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'Python', 3, 2, 4, 2, 2, 2, 'Neither easy nor difficult', 'Good Culture', 'Male', 28, 'Other (Please Specify):Mozambique', 'Bachelors', 'Black or African American'),
('62a353372e54c9003e534a40', '2022-06-10', '10:20', '00:01:44', 'Other (Please Specify):Analytics Manager', 'No', '150k-225k', 'Tech', 'R', 8, 10, 9, 7, 5, 5, 'Neither easy nor difficult', 'Remote Work', 'Male', 33, 'United States', 'Masters', 'White or Caucasian'),
('62a353565d257a28a30da59f', '2022-06-10', '10:21', '00:05:11', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Other:SQL Postgres ', 2, 3, 3, 3, 2, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 22, 'Other (Please Specify):Egypt ', 'Bachelors', 'Other (Please Specify):Half Asian half African '),
('62a353f07dc029e2d66c1783', '2022-06-10', '10:23', '00:01:48', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 3, 5, 5, 4, 4, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'India', 'Bachelors', 'Other (Please Specify):Brown'),
('62a3545e0f8c8599d5af474b', '2022-06-10', '10:25', '00:03:42', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Cons', 'Other:DAX', 8, 8, 8, 8, 10, 10, 'Easy', 'Good Work/Life Balance', 'Male', 37, 'United States', 'Bachelors', 'Other (Please Specify):Prefer not to ans'),
('62a35472cec54911e9ca82bc', '2022-06-10', '10:25', '00:22:47', 'Other (Please Specify):Business Analyst', 'No', '41k-65k', 'Other (Please Specify):Wholesale', 'R', 3, 4, 5, 5, 4, 3, 'Difficult', 'Better Salary', 'Male', 24, 'United States', 'Masters', 'White or Caucasian'),
('62a354bdb4da29969c631700', '2022-06-10', '10:27', '00:01:20', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'R', 1, 4, 3, 2, 0, 6, 'Difficult', 'Better Salary', 'Male', 25, 'United Kingdom', 'Masters', 'Asian or Asian American'),
('62a354e9cf255543173031ed', '2022-06-10', '10:27', '00:01:24', 'Data Engineer', 'No', '86k-105k', 'Healthcare', 'R', 8, 10, 8, 8, 9, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 28, 'United States', 'Masters', 'Black or African American'),
('62a35541f3072dd892625517', '2022-06-10', '10:29', '00:02:07', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Energy ', 'Python', 5, 5, 7, 7, 7, 7, 'Easy', 'Better Salary', 'Male', 32, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a355445d257a28a30dab12', '2022-06-10', '10:29', '00:01:34', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Government programs', 'Python', 0, 7, 7, 7, 0, 7, 'Easy', 'Good Culture', 'Male', 29, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a35631cf25554317303425', '2022-06-10', '10:33', '00:02:50', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'R', 7, 5, 8, 6, 5, 10, 'Difficult', 'Other (Please Specify):Want to move from Australia to Canada, so position in desired country ', 'Female', 26, 'Other (Please Specify):Australia', 'Masters', 'White or Caucasian'),
('62a357390a77c1a77f65f189', '2022-06-10', '10:37', '00:03:01', 'Data Engineer', 'Yes', '41k-65k', 'Tech', 'Python', 0, 7, 5, 0, 0, 7, 'Neither easy nor difficult', 'Remote Work', 'Male', 37, 'Canada', 'Masters', 'White or Caucasian'),
('62a3578b0a77c1a77f65f279', '2022-06-10', '10:39', '00:01:44', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Supply Chain', 'R', 4, 6, 5, 4, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a357d30f8c8599d5af4ea3', '2022-06-10', '10:40', '00:01:36', 'Data Analyst', 'No', '0-40k', 'Finance', 'Other:Sql', 4, 4, 5, 6, 6, 0, 'Difficult', 'Better Salary', 'Male', 24, 'Other (Please Specify):Israel', 'High School', 'White or Caucasian'),
('62a3582e575fa3a5ae88e506', '2022-06-10', '10:41', '00:02:45', 'Other (Please Specify):Manager of a team of Data Analysts', 'No', '125k-150k', 'Finance', 'Other:SQL', 7, 8, 8, 8, 7, 8, 'Easy', 'Better Salary', 'Male', 52, 'United States', 'Bachelors', 'White or Caucasian'),
('62a35878575fa3a5ae88e5d5', '2022-06-10', '10:43', '00:04:22', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 6, 10, 3, 5, 0, 10, 'Difficult', 'Good Culture', 'Male', 27, 'Other (Please Specify):Singapore', 'Bachelors', 'Asian or Asian American'),
('62a35981bae91e4b8b8323dd', '2022-06-10', '10:47', '00:01:07', 'Data Analyst', 'No', '106k-125k', 'Healthcare', 'Other', 6, 6, 3, 3, 3, 3, 'Neither easy nor difficult', 'Better Salary', 'Female', 29, 'United States', 'Masters', 'White or Caucasian'),
('62a35a2c7dc029e2d66c2519', '2022-06-10', '10:50', '00:01:39', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 3, 7, 6, 7, 0, 0, 'Difficult', 'Better Salary', 'Male', 42, 'Other (Please Specify):Brazil', 'Associates', 'White or Caucasian'),
('62a35aa2f8d5efcc22f8075d', '2022-06-10', '10:52', '00:01:24', 'Data Analyst', 'Yes', '41k-65k', 'Telecommunication', 'R', 3, 5, 6, 4, 3, 7, 'Difficult', 'Other (Please Specify):All of the options are important to me when looking for a new job', 'Male', 28, 'United States', 'Masters', 'White or Caucasian'),
('62a35ababae91e4b8b83269d', '2022-06-10', '10:52', '00:02:39', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 8, 8, 8, 8, 8, 9, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 44, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62a35ae0575fa3a5ae88ea98', '2022-06-10', '10:53', '00:01:30', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 5, 5, 6, 5, 6, 7, 'Neither easy nor difficult', 'Remote Work', 'Male', 23, 'Other (Please Specify):Spain', 'Bachelors', 'White or Caucasian'),
('62a35ae87dc029e2d66c279b', '2022-06-10', '10:53', '00:01:14', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Entertainment', 'R', 1, 2, 6, 4, 2, 0, 'Easy', 'Better Salary', 'Male', 27, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a35b13bc6861bf31770188', '2022-06-10', '10:54', '00:01:05', 'Data Analyst', 'No', '66k-85k', 'Construction', 'Python', 3, 3, 3, 2, 2, 1, 'Neither easy nor difficult', 'Good Culture', 'Male', 26, 'United States', 'Masters', 'White or Caucasian'),
('62a35b72f408bae018ed76a8', '2022-06-10', '10:55', '00:01:14', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'Other:Vba', 3, 4, 4, 4, 1, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'United States', 'Masters', 'Hispanic or Latino'),
('62a35b965d257a28a30db899', '2022-06-10', '10:56', '00:01:45', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Retail', 'Python', 0, 0, 7, 1, 0, 9, 'Difficult', 'Better Salary', 'Male', 33, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a35ba3f3072dd892626068', '2022-06-10', '10:56', '00:01:44', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Aerospace', 'Python', 8, 10, 10, 10, 10, 10, 'Easy', 'Better Salary', 'Male', 28, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a35c890a77c1a77f65fdfa', '2022-06-10', '11:00', '00:01:29', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'R', 2, 8, 8, 7, 6, 9, 'Neither easy nor difficult', 'Better Salary', 'Male', 32, 'Other (Please Specify):Kenya', 'Bachelors', 'Black or African American'),
('62a35d8f575fa3a5ae88efd6', '2022-06-10', '11:04', '00:02:38', 'Student/Looking/None', 'Yes', '41k-65k', 'Other (Please Specify):Foodservice Franchising', 'Python', 2, 4, 6, 1, 1, 1, 'Very Difficult', 'Better Salary', 'Male', 34, 'Canada', 'Associates', 'Asian or Asian American'),
('62a35d95cf25554317304386', '2022-06-10', '11:04', '00:01:04', 'Data Analyst', 'No', '150k-225k', 'Tech', 'Python', 10, 10, 10, 8, 10, 10, 'Easy', 'Good Work/Life Balance', 'Male', 28, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a35e970a77c1a77f66035a', '2022-06-10', '11:09', '00:01:51', 'Data Scientist', 'Yes', '125k-150k', 'Telecommunication', 'Python', 2, 4, 1, 3, 1, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a35eabf408bae018ed7cbc', '2022-06-10', '11:09', '00:01:35', 'Data Engineer', 'Yes', '41k-65k', 'Finance', 'Python', 2, 4, 5, 5, 4, 6, 'Difficult', 'Better Salary', 'Male', 22, 'United States', 'Bachelors', 'White or Caucasian'),
('62a35f0d24a2626027386a8b', '2022-06-10', '11:11', '00:01:03', 'Data Analyst', 'No', '66k-85k', 'Healthcare', 'Python', 3, 3, 4, 1, 2, 2, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'United States', 'Masters', 'White or Caucasian'),
('62a35f825d257a28a30dc128', '2022-06-10', '11:13', '00:02:17', 'Data Analyst', 'No', '66k-85k', 'Healthcare', 'Python', 8, 10, 10, 8, 5, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 31, 'United States', 'Masters', 'White or Caucasian'),
('62a35fa0f8f7561645856c35', '2022-06-10', '11:13', '00:01:39', 'Data Analyst', 'No', '66k-85k', 'Tech', 'Python', 4, 5, 5, 5, 4, 4, 'Easy', 'Remote Work', 'Male', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a35fc1f8f7561645856c98', '2022-06-10', '11:14', '00:00:53', 'Student/Looking/None', 'No', '0-40k', 'Healthcare', 'Python', 0, 0, 0, 0, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 24, 'United States', 'Masters', 'Asian or Asian American'),
('62a3602318134ddc75ced6b9', '2022-06-10', '11:15', '00:01:19', 'Data Analyst', 'No', '86k-105k', 'Other (Please Specify):Government ', 'Other:Stata', 4, 5, 3, 4, 2, 3, 'Easy', 'Good Culture', 'Male', 34, 'United States', 'Masters', 'White or Caucasian'),
('62a360b8f8f7561645856ec4', '2022-06-10', '11:18', '00:01:16', 'Data Engineer', 'No', '86k-105k', 'Tech', 'Python', 5, 3, 5, 5, 4, 5, 'Difficult', 'Better Salary', 'Male', 23, 'United States', 'Bachelors', 'White or Caucasian'),
('62a360dbd8c00e9f541a16cf', '2022-06-10', '11:18', '00:02:08', 'Student/Looking/None', 'No', '41k-65k', 'Construction', 'Other:Excel', 10, 4, 10, 10, 4, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 32, 'Other (Please Specify):Belgium', 'Masters', 'White or Caucasian'),
('62a36146f8f7561645856ff7', '2022-06-10', '11:20', '00:01:31', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'R', 6, 8, 6, 6, 8, 10, 'Easy', 'Remote Work', 'Male', 29, 'Other (Please Specify):Argentina', 'High School', 'Hispanic or Latino'),
('62a361af0f8c8599d5af6277', '2022-06-10', '11:22', '00:01:39', 'Data Analyst', 'Yes', '0-40k', 'Education', 'Python', 0, 0, 0, 0, 0, 0, 'Very Difficult', 'Better Salary', 'Male', 34, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a361cc575fa3a5ae88f908', '2022-06-10', '11:22', '00:00:55', 'Data Analyst', 'No', '66k-85k', 'Finance', 'Python', 7, 5, 5, 7, 9, 10, 'Very Easy', 'Remote Work', 'Male', 24, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a3620f0f8c8599d5af63a5', '2022-06-10', '11:23', '00:02:19', 'Other (Please Specify):Analyst', 'No', '66k-85k', 'Tech', 'Python', 0, 10, 6, 0, 0, 0, 'Difficult', 'Better Salary', 'Male', 30, 'United States', 'Bachelors', 'Other (Please Specify):Indian'),
('62a36251d8c00e9f541a199e', '2022-06-10', '11:25', '00:01:59', 'Other (Please Specify):Analytics Engineer', 'No', '86k-105k', 'Other (Please Specify):Entertainment ', 'Python', 5, 5, 6, 4, 5, 5, 'Difficult', 'Better Salary', 'Male', 24, 'United States', 'Masters', 'Hispanic or Latino'),
('62a36275bc6861bf31771183', '2022-06-10', '11:25', '00:01:52', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Insurance', 'Python', 6, 8, 10, 9, 7, 9, 'Easy', 'Better Salary', 'Male', 27, 'United States', 'Bachelors', 'Other (Please Specify):N/A'),
('62a3636c2e54c9003e536e6b', '2022-06-10', '11:29', '00:03:30', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 1, 2, 4, 4, 4, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 21, 'India', 'Bachelors', 'Asian or Asian American'),
('62a365c2f8d5efcc22f81e2e', '2022-06-10', '11:39', '00:03:54', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Logistics', 'Python', 3, 5, 9, 9, NULL, 8, 'Very Difficult', 'Other (Please Specify):Both Good work / life Balance and Good Culture', 'Male', 31, 'Other (Please Specify):UAE', 'Masters', 'Black or African American'),
('62a365d5d8c00e9f541a20cf', '2022-06-10', '11:40', '00:02:38', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'R', 5, 7, 5, 5, 5, 7, 'Difficult', 'Better Salary', 'Male', 41, 'Other (Please Specify):Egypt', 'Bachelors', 'White or Caucasian'),
('62a3670b575fa3a5ae890422', '2022-06-10', '11:45', '00:02:07', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 0, 1, 1, 0, 0, 2, 'Difficult', 'Better Salary', 'Male', 25, 'India', 'Bachelors', 'Asian or Asian American'),
('62a3676bb4da29969c633ac7', '2022-06-10', '11:46', '00:03:59', 'Data Analyst', 'No', '0-40k', 'Finance', 'Other:I currently do not work with programming languages yet', 4, 7, 8, 8, 8, 9, 'Neither easy nor difficult', 'Other (Please Specify):an environment that encourages growth like where I work currently and better salary ', 'Male', 24, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62a36794b4da29969c633b48', '2022-06-10', '11:47', '00:02:01', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 6, 5, 6, 5, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify): Somalia', 'Masters', 'Other (Please Specify):African '),
('62a367d224a2626027387b56', '2022-06-10', '11:48', '00:03:38', 'Data Analyst', 'No', '150k-225k', 'Finance', 'Other', 7, 7, 7, NULL, 5, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 33, 'United States', 'Bachelors', 'White or Caucasian'),
('62a367ed18134ddc75cee697', '2022-06-10', '11:49', '00:02:40', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Energy (oil and gas)', 'Other:Altery', 7, 4, 10, 9, 7, 10, 'Difficult', 'Better Salary', 'Male', 23, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a36802f8f7561645857e38', '2022-06-10', '11:49', '00:01:34', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 6, 6, 6, 6, 6, 6, 'Difficult', 'Remote Work', 'Female', 33, 'United Kingdom', 'Masters', 'Asian or Asian American'),
('62a3684ebc6861bf31771f15', '2022-06-10', '11:50', '00:00:48', 'Data Analyst', 'No', '106k-125k', 'Finance', 'Python', 4, 4, 4, 4, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3688df8f7561645857f7e', '2022-06-10', '11:51', '00:00:57', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Market research', 'Python', 5, 5, 5, 5, 5, 5, 'Neither easy nor difficult', 'Remote Work', 'Female', 27, 'Other (Please Specify):Kosovo', 'Masters', 'White or Caucasian'),
('62a368ee2e54c9003e537e4a', '2022-06-10', '11:53', '00:01:45', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'C/C++', 5, 10, 10, 8, 10, 10, 'Very Easy', 'Good Work/Life Balance', 'Male', 30, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a369280a77c1a77f661ad0', '2022-06-10', '11:54', '00:02:41', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 0, 3, NULL, NULL, NULL, 6, 'Neither easy nor difficult', 'Remote Work', 'Male', 29, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62a36969f8f756164585821d', '2022-06-10', '11:55', '00:03:43', 'Other (Please Specify):Analyst Primary Market Intelligence', 'Yes', '0-40k', 'Healthcare', 'Python', 10, 2, 8, 5, 0, 6, 'Easy', 'Better Salary', 'Male', 25, 'India', 'Masters', 'Other (Please Specify):Indian'),
('62a3697ff408bae018ed948b', '2022-06-10', '11:55', '00:01:28', 'Data Analyst', 'No', '86k-105k', 'Telecommunication', 'Other:None', 7, 7, 5, 7, 7, 7, 'Easy', 'Remote Work', 'Male', 40, 'United States', 'High School', 'Hispanic or Latino'),
('62a36ac6cf255543173063d8', '2022-06-10', '12:01', '00:02:59', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Government', 'Other', 6, 10, 8, 8, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Female', 29, 'Canada', 'Bachelors', 'Other (Please Specify)'),
('62a36ad1f408bae018ed9793', '2022-06-10', '12:01', '00:04:44', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify)', 'Python', 0, 3, 3, 3, 3, NULL, 'Difficult', 'Remote Work', 'Male', 29, 'India', 'Masters', 'Asian or Asian American'),
('62a36b6c24a26260273882a2', '2022-06-10', '12:03', '00:01:40', 'Data Analyst', 'Yes', '0-40k', 'Education', 'Python', 1, 2, 2, 3, 3, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'Other (Please Specify):Nigeria ', 'Masters', 'Black or African American'),
('62a36b862e54c9003e5383c6', '2022-06-10', '12:04', '00:02:21', 'Other (Please Specify):software engineer', 'No', '86k-105k', 'Other (Please Specify):hospitality', 'Other:c#', 5, 2, 0, 2, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 34, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a36d12f8d5efcc22f82cd8', '2022-06-10', '12:10', '00:02:58', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 0, 4, 7, 6, 7, 8, 'Easy', 'Other (Please Specify):Learning possibilities', 'Male', 24, 'Other (Please Specify):Belgium', 'Masters', 'White or Caucasian'),
('62a36d3124a262602738862c', '2022-06-10', '12:11', '00:02:23', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'Python', 5, 8, 8, 9, 7, 9, 'Very Easy', 'Better Salary', 'Male', 26, 'Other (Please Specify):Iraq', 'Bachelors', 'Other (Please Specify):Kurdish'),
('62a36e470a77c1a77f662470', '2022-06-10', '12:16', '00:01:21', 'Data Analyst', 'No', '125k-150k', 'Tech', 'Python', 10, 5, 10, 10, 6, 10, 'Difficult', 'Good Work/Life Balance', 'Male', 28, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a36e7024a262602738890a', '2022-06-10', '12:16', '00:00:59', 'Student/Looking/None', 'No', '0-40k', 'Education', 'R', 5, 4, 4, 4, 5, 5, 'Difficult', 'Good Work/Life Balance', 'Male', 25, 'Other (Please Specify):Germany', 'Masters', 'White or Caucasian'),
('62a36fe67dc029e2d66c5303', '2022-06-10', '12:23', '00:02:52', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 1, 4, 9, 7, 8, 10, 'Easy', 'Better Salary', 'Male', 33, 'Other (Please Specify):Colombia', 'Bachelors', 'Hispanic or Latino'),
('62a3701f575fa3a5ae89164e', '2022-06-10', '12:23', '00:01:01', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 4, 4, 6, 3, 4, 0, 'Neither easy nor difficult', 'Remote Work', 'Male', 30, 'Other (Please Specify):Ireland ', 'Masters', 'White or Caucasian'),
('62a370635d257a28a30de5eb', '2022-06-10', '12:25', '00:02:51', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 1, 1, 1, 1, 1, 1, 'Very Difficult', 'Better Salary', 'Male', 35, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a37128d8c00e9f541a39dd', '2022-06-10', '12:28', '00:01:57', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Automotive', 'Other:None', 5, 2, 5, 5, 3, 4, 'Difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Romania', 'Bachelors', 'White or Caucasian'),
('62a3715124a2626027388f02', '2022-06-10', '12:29', '00:01:21', 'Data Analyst', 'No', '0-40k', 'Real Estate', 'Python', 4, 7, 9, 5, 2, 8, 'Easy', 'Better Salary', 'Male', 23, 'Other (Please Specify):Spain', 'Bachelors', 'White or Caucasian'),
('62a37222cf2555431730732d', '2022-06-10', '12:32', '00:02:10', 'Data Engineer', 'No', '0-40k', 'Healthcare', 'Python', 6, 6, 6, 5, 4, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 24, 'Other (Please Specify):Mexico', 'Bachelors', 'Hispanic or Latino'),
('62a373efbc6861bf3177360b', '2022-06-10', '12:40', '00:02:40', 'Data Analyst', 'Yes', '150k-225k', 'Education', 'Other:SQL ', 8, 9, 9, 7, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'United States', 'Masters', 'Black or African American'),
('62a3759e5d257a28a30def3a', '2022-06-10', '12:47', '00:01:24', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Chemical Manufacturing', 'Python', 4, 10, 10, 8, 5, 6, 'Neither easy nor difficult', 'Remote Work', 'Male', 32, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3777624a262602738997e', '2022-06-10', '12:55', '00:01:55', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 5, 4, 4, 4, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 50, 'Canada', 'Bachelors', 'White or Caucasian'),
('62a377987dc029e2d66c638d', '2022-06-10', '12:55', '00:01:25', 'Data Architect', 'Yes', '66k-85k', 'Other (Please Specify):Poultry', 'Python', 7, 7, 8, 9, 10, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 29, 'United States', 'High School', 'White or Caucasian'),
('62a377f424a2626027389af3', '2022-06-10', '12:57', '00:03:54', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'R', 2, 8, 7, 6, 5, 6, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 41, 'Other (Please Specify):Peru', 'Bachelors', 'Hispanic or Latino'),
('62a3784c0f8c8599d5af8fbc', '2022-06-10', '12:58', '00:01:54', 'Other (Please Specify):Data Integrity', 'No', '0-40k', 'Other (Please Specify):Renewable Resources', 'R', 1, 7, 7, 1, 4, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 23, 'United States', 'Associates', 'White or Caucasian'),
('62a37a43d8c00e9f541a4a7c', '2022-06-10', '13:07', '00:03:34', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 4, 7, 8, 7, 8, 8, 'Difficult', 'Better Salary', 'Male', 31, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a37a7818134ddc75cf0d4c', '2022-06-10', '13:08', '00:01:27', 'Data Analyst', 'No', '0-40k', 'Healthcare', 'Python', 0, 10, 10, 10, 10, 10, 'Difficult', 'Better Salary', 'Male', 22, 'Other (Please Specify):Philippines', 'Bachelors', 'Native Hawaiian or other Pacific Islander'),
('62a37aa1cf255543173081e5', '2022-06-10', '13:08', '00:01:51', 'Data Analyst', 'No', '66k-85k', 'Finance', 'Python', 3, 5, 5, 5, 3, 3, 'Very Difficult', 'Better Salary', 'Male', 29, 'United States', 'Masters', 'Hispanic or Latino'),
('62a37ad924a2626027389f8a', '2022-06-10', '13:09', '00:02:04', 'Data Scientist', 'Yes', '0-40k', 'Tech', 'Python', 4, 4, 4, 0, 0, 6, 'Difficult', 'Good Culture', 'Male', 23, 'Other (Please Specify):Malaysia', 'Bachelors', 'Other (Please Specify):Indian'),
('62a37b7db4da29969c636123', '2022-06-10', '13:12', '00:01:25', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Customer service ', 'Other:Just started learning ', 0, 0, 1, 1, 0, 1, 'Neither easy nor difficult', 'Remote Work', 'Female', 24, 'United States', 'High School', 'Hispanic or Latino'),
('62a37bab2e54c9003e53a10a', '2022-06-10', '13:13', '00:02:09', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify): Manufacturering ', 'Python', 5, 9, 10, 10, 5, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'United States', 'Bachelors', 'Black or African American'),
('62a37c50cec54911e9cacee2', '2022-06-10', '13:16', '00:01:30', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Python', 4, 3, 5, 2, 2, 3, 'Difficult', 'Good Culture', 'Male', 31, 'India', 'Bachelors', 'Asian or Asian American'),
('62a37d41bae91e4b8b8369f7', '2022-06-10', '13:20', '00:01:31', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):sports', 'Python', 1, 1, 1, 1, 7, 9, 'Neither easy nor difficult', 'Remote Work', 'Male', 22, 'Other (Please Specify):nigeria', 'Bachelors', 'Black or African American'),
('62a37f8db4da29969c6367bf', '2022-06-10', '13:29', '00:02:32', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):fashion/online store', 'Python', 7, 8, 10, 8, 7, 5, 'Neither easy nor difficult', 'Remote Work', 'Male', 31, 'Other (Please Specify):Germany', 'Bachelors', 'White or Caucasian'),
('62a37ff3bae91e4b8b836ed0', '2022-06-10', '13:31', '00:01:21', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 0, 4, 0, 0, 4, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'United States', 'Masters', 'Asian or Asian American'),
('62a38023575fa3a5ae89339e', '2022-06-10', '13:32', '00:01:32', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):I am a student', 'Python', 1, 1, 2, 1, 1, 1, 'Difficult', 'Better Salary', 'Female', 25, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a38153cec54911e9cad855', '2022-06-10', '13:37', '00:24:18', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 4, 10, 10, 8, 8, 10, 'Easy', 'Good Work/Life Balance', 'Male', 30, 'Other (Please Specify):Colombia', 'Masters', 'Hispanic or Latino'),
('62a381d024a262602738ab19', '2022-06-10', '13:39', '00:01:44', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'R', 0, 6, 5, 6, 0, 2, 'Easy', 'Other (Please Specify):Opportunities for growth ', 'Male', 28, 'United States', 'Masters', 'Hispanic or Latino'),
('62a38227bae91e4b8b837235', '2022-06-10', '13:40', '00:01:37', 'Data Analyst', 'No', '125k-150k', 'Finance', 'Python', 6, 6, 5, 4, 2, 4, 'Easy', 'Remote Work', 'Male', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a38489cf25554317309145', '2022-06-10', '13:51', '00:01:40', 'Data Scientist', 'Yes', '125k-150k', 'Other (Please Specify):Retail', 'Python', 6, 7, 7, 10, 6, 7, 'Neither easy nor difficult', 'Remote Work', 'Female', 32, 'United States', 'Masters', 'White or Caucasian'),
('62a384f0cec54911e9cadd6f', '2022-06-10', '13:52', '00:02:41', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Marketing ', 'Other:Sql', 3, 5, 6, 4, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 40, 'Other (Please Specify):Poland', 'PhD', 'White or Caucasian'),
('62a385480f8c8599d5afa5c6', '2022-06-10', '13:54', '00:02:38', 'Data Engineer', 'Yes', '0-40k', 'Other (Please Specify):Manufacturing', 'Python', 4, 7, 7, 6, 8, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 36, 'Other (Please Specify):Singapore', 'Associates', 'Asian or Asian American'),
('62a3856218134ddc75cf1ee0', '2022-06-10', '13:54', '00:01:29', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 6, 10, 9, 9, 9, 10, 'Difficult', 'Better Salary', 'Male', 35, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a385c40f8c8599d5afa6cf', '2022-06-10', '13:56', '00:00:59', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 3, 4, 4, 4, 5, 5, 'Very Difficult', 'Good Work/Life Balance', 'Male', 29, 'United States', 'Masters', 'Asian or Asian American'),
('62a385ddbae91e4b8b837855', '2022-06-10', '13:56', '00:04:08', 'Data Analyst', 'No', '41k-65k', 'Finance', 'Python', 6, 5, 9, 9, 7, 5, 'Neither easy nor difficult', 'Other (Please Specify):I just started and I don''t like programming so much, so I would search for a more "impactiful" role. Meaning: being able to take decisions that steer the business.', 'Female', 25, 'Other (Please Specify):Germany', 'Masters', 'Hispanic or Latino'),
('62a385e7b4da29969c6372ab', '2022-06-10', '13:56', '00:02:05', 'Database Developer', 'Yes', '41k-65k', 'Other (Please Specify):Hospitality ', 'Python', 6, 8, 8, 9, 6, 8, 'Difficult', 'Remote Work', 'Male', 29, 'United States', 'Bachelors', 'White or Caucasian'),
('62a386dfcec54911e9cae1d3', '2022-06-10', '14:01', '00:02:04', 'Data Analyst', 'No', '86k-105k', 'Agriculture', 'Python', 7, 6, 7, 4, 5, 8, 'Difficult', 'Good Work/Life Balance', 'Male', 26, 'United States', 'Bachelors', 'Black or African American'),
('62a3870bbc6861bf31775841', '2022-06-10', '14:01', '00:02:02', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Marketing', 'R', 1, 1, 1, 1, 1, 1, 'Neither easy nor difficult', 'Remote Work', 'Male', 34, 'Other (Please Specify):Ghana', 'Bachelors', 'Black or African American'),
('62a38733f8d5efcc22f859fc', '2022-06-10', '14:02', '00:01:27', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 5, 2, 5, 4, 3, 5, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 26, 'Other (Please Specify):Egypt', 'Bachelors', 'White or Caucasian'),
('62a387e6575fa3a5ae8940a1', '2022-06-10', '14:05', '00:02:11', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 3, 5, 4, 3, 2, 'Difficult', 'Other (Please Specify):Good opportunities in projects and learnjng', 'Female', 22, 'India', 'Bachelors', 'Asian or Asian American'),
('62a388d524a262602738b869', '2022-06-10', '14:09', '00:01:40', 'Student/Looking/None', 'Yes', '0-40k', 'Construction', 'Python', 0, 2, 0, 1, 1, 2, 'Very Difficult', 'Remote Work', 'Female', 24, 'Other (Please Specify):Kenya', 'Bachelors', 'Black or African American'),
('62a38975b4da29969c637830', '2022-06-10', '14:12', '00:03:09', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Medical industry ', 'Python', 3, 6, 6, 6, 4, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62a38985f8f756164585b89c', '2022-06-10', '14:12', '00:03:13', 'Data Architect', 'Yes', '0-40k', 'Finance', 'Python', 5, 6, 2, 3, 3, 5, 'Very Difficult', 'Good Work/Life Balance', 'Female', 34, 'Other (Please Specify):Portugsl', 'Masters', 'White or Caucasian'),
('62a389b70f8c8599d5afad1a', '2022-06-10', '14:13', '00:02:27', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 5, 4, 5, 4, 2, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'India', 'Bachelors', 'Asian or Asian American'),
('62a389ed18134ddc75cf24f8', '2022-06-10', '14:14', '00:01:27', 'Data Scientist', 'No', '0-40k', 'Tech', 'R', 2, 7, 7, 7, 7, 7, 'Easy', 'Better Salary', 'Male', 21, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a38a060a77c1a77f6654b7', '2022-06-10', '14:14', '00:02:47', 'Other (Please Specify):Financial Analyst', 'No', '0-40k', 'Other (Please Specify):Management', 'Python', 2, 4, 5, 3, 1, 1, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 35, 'Other (Please Specify):Macedonia', 'Masters', 'White or Caucasian'),
('62a38a4d575fa3a5ae8944df', '2022-06-10', '14:15', '00:01:43', 'Data Analyst', 'No', '41k-65k', 'Education', 'Python', 7, 7, 8, 8, 6, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 26, 'United States', 'Bachelors', 'Black or African American'),
('62a38a97cf25554317309af2', '2022-06-10', '14:16', '00:01:42', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Warehouse', 'Python', 2, 4, 7, 10, 5, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a38c120f8c8599d5afb0e9', '2022-06-10', '14:23', '00:02:02', 'Other (Please Specify):Database Manager', 'No', '41k-65k', 'Other (Please Specify):Non profit Animal Welfare', 'Python', 1, 5, 5, 1, 0, 3, 'Easy', 'Better Salary', 'Female', 33, 'United States', 'Bachelors', 'White or Caucasian'),
('62a38c9dbc6861bf317760c4', '2022-06-10', '14:25', '00:01:57', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Consulting', 'Other:i mean, i mostly work in SQL and its variants?', 7, 6, 5, 7, 4, 4, 'Easy', 'Better Salary', 'Female', 56, 'United States', 'Bachelors', 'White or Caucasian'),
('62a38de50f8c8599d5afb3e7', '2022-06-10', '14:31', '00:04:30', 'Other (Please Specify):Software Developer ', 'No', '0-40k', 'Other (Please Specify):Insurance ', 'Python', 3, 3, 6, 5, NULL, 4, 'Difficult', 'Good Work/Life Balance', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a3906224a262602738c58a', '2022-06-10', '14:41', '00:01:16', 'Data Scientist', 'Yes', '125k-150k', 'Healthcare', 'Python', 4, 5, 5, 5, 4, 5, 'Difficult', 'Better Salary', 'Male', 28, 'United States', 'Masters', 'White or Caucasian'),
('62a3907cbae91e4b8b838917', '2022-06-10', '14:42', '00:01:44', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):none', 'JavaScript', 0, 0, 0, 0, 0, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 21, 'Other (Please Specify):Egypt', 'High School', 'White or Caucasian'),
('62a390c0d8c00e9f541a6fd7', '2022-06-10', '14:43', '00:02:14', 'Student/Looking/None', 'No', '66k-85k', 'Other (Please Specify):Social work ', 'Python', 2, 2, 4, 1, 2, 1, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 35, 'United States', 'Masters', 'Black or African American'),
('62a390e4f3072dd89262c0cd', '2022-06-10', '14:43', '00:01:25', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'Python', 7, 5, 9, 9, 9, 8, 'Neither easy nor difficult', 'Remote Work', 'Male', 29, 'Other (Please Specify):Irel', 'Masters', 'Asian or Asian American'),
('62a391cacf2555431730a623', '2022-06-10', '14:47', '00:01:18', 'Data Analyst', 'No', '86k-105k', 'Tech', 'Python', 9, 10, 8, 8, 7, 7, 'Neither easy nor difficult', 'Other (Please Specify):Projects I�m interested in', 'Female', 23, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a39214f8f756164585c6b6', '2022-06-10', '14:48', '00:03:06', 'Other (Please Specify):Tableau admin', 'No', '41k-65k', 'Finance', 'Python', 3, 3, 3, 0, 0, 1, 'Difficult', 'Good Work/Life Balance', 'Male', 25, 'India', 'Bachelors', 'Asian or Asian American'),
('62a39297b4da29969c638679', '2022-06-10', '14:51', '00:01:36', 'Data Engineer', 'Yes', '86k-105k', 'Other (Please Specify):E-commerce', 'Python', 8, 7, 10, 9, 10, 10, 'Easy', 'Better Salary', 'Male', 27, 'United States', 'Masters', 'White or Caucasian'),
('62a393330a77c1a77f6662e4', '2022-06-10', '14:53', '00:01:54', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 8, 7, 5, 8, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 22, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a3944024a262602738cb07', '2022-06-10', '14:58', '00:02:02', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):IT', 'Python', 6, 3, 5, 7, 5, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 22, 'India', 'Bachelors', 'Asian or Asian American'),
('62a3951ed8c00e9f541a75d1', '2022-06-10', '15:01', '00:01:41', 'Other (Please Specify)', 'No', '106k-125k', 'Other (Please Specify)', 'Java', 7, 7, 4, 5, 5, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 43, 'United States', 'Masters', 'Asian or Asian American'),
('62a3958fcec54911e9caf827', '2022-06-10', '15:03', '00:05:13', 'Other (Please Specify):Reporting Adm', 'Yes', '0-40k', 'Tech', 'Python', 3, 5, 8, 4, 5, 5, 'Difficult', 'Better Salary', 'Female', 32, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3970ebae91e4b8b839495', '2022-06-10', '15:10', '00:01:06', 'Student/Looking/None', 'Yes', '66k-85k', 'Healthcare', 'Other', NULL, NULL, NULL, NULL, NULL, 0, 'Difficult', 'Good Work/Life Balance', 'Female', 42, 'United States', 'Masters', 'Asian or Asian American'),
('62a3976ecf2555431730af5e', '2022-06-10', '15:11', '00:01:40', 'Other (Please Specify):Billing analyst', 'No', '66k-85k', 'Other (Please Specify):Legal', 'Python', 4, 6, 2, 3, 3, 2, 'Very Difficult', 'Remote Work', 'Male', 31, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a397fb5d257a28a30e279a', '2022-06-10', '15:14', '00:01:20', 'Data Engineer', 'No', '0-40k', 'Other (Please Specify):Media & advertising ', 'Python', 0, 10, 10, 5, 0, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a3980c7dc029e2d66c9a81', '2022-06-10', '15:14', '00:01:49', 'Data Analyst', 'No', '41k-65k', 'Agriculture', 'Other:SQL', 3, 5, 5, 5, 3, 2, 'Neither easy nor difficult', 'Better Salary', 'Female', 25, 'United States', 'Masters', 'Asian or Asian American'),
('62a3980e0f8c8599d5afc32c', '2022-06-10', '15:14', '00:01:27', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Aviation', 'Other:SAS', 9, 9, 9, 6, 9, 8, 'Difficult', 'Good Work/Life Balance', 'Male', 31, 'United States', 'Masters', 'Asian or Asian American'),
('62a39a340f8c8599d5afc6ce', '2022-06-10', '15:23', '00:01:23', 'Data Scientist', 'Yes', '0-40k', 'Education', 'Python', 3, 3, 1, 1, 1, 6, 'Difficult', 'Better Salary', 'Male', 36, 'Other (Please Specify):Morocco', 'Masters', 'White or Caucasian'),
('62a39a95bc6861bf3177751d', '2022-06-10', '15:25', '00:02:24', 'Other (Please Specify):I work with data tools and can create simple dashboards but I am not a data scientist', 'No', '41k-65k', 'Healthcare', 'Python', 6, 8, 8, 8, 8, 10, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 35, 'Other (Please Specify):Bulgaria', 'Masters', 'White or Caucasian'),
('62a39b315d257a28a30e2cae', '2022-06-10', '15:27', '00:01:40', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Utilities', 'R', 6, 10, 10, 10, 9, 8, 'Easy', 'Remote Work', 'Male', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a39b6cf408bae018ede929', '2022-06-10', '15:28', '00:01:55', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Audit Firm', 'Python', 8, 8, 9, 9, 8, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'Other (Please Specify):Peru', 'Bachelors', 'Hispanic or Latino'),
('62a39bd324a262602738d725', '2022-06-10', '15:30', '00:01:23', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Sports', 'Python', 7, 4, 7, 4, 8, 10, 'Easy', 'Good Work/Life Balance', 'Male', 25, 'Other (Please Specify):Costa Rica ', 'Bachelors', 'Hispanic or Latino'),
('62a39e03f408bae018eded39', '2022-06-10', '15:39', '00:01:59', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):E-commerce', 'Python', 6, 6, 10, 8, 6, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Poland', 'Bachelors', 'White or Caucasian'),
('62a39e69d8c00e9f541a8358', '2022-06-10', '15:41', '00:01:10', 'Other (Please Specify):Marketing Data Specialist', 'No', '41k-65k', 'Other (Please Specify):Sports/Marketing', 'R', 5, 5, 5, 5, 5, 5, 'Difficult', 'Good Work/Life Balance', 'Male', 22, 'United States', 'Masters', 'White or Caucasian'),
('62a3a0bcf8f756164585daf7', '2022-06-10', '15:51', '00:03:49', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Other:None', 7, 8, 8, 4, 6, 8, 'Neither easy nor difficult', 'Good Culture', 'Male', 38, 'Other (Please Specify):Germany', 'High School', 'White or Caucasian'),
('62a3a1a62e54c9003e53dc35', '2022-06-10', '15:55', '00:01:47', 'Data Analyst', 'Yes', '0-40k', 'Education', 'Python', 0, 0, 5, 0, 0, 0, 'Difficult', 'Good Culture', 'Male', 27, 'Other (Please Specify):Kenya', 'Bachelors', 'Black or African American'),
('62a3a231b4da29969c639b2c', '2022-06-10', '15:57', '00:02:55', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Consulting', 'Other:NA', 4, 4, 2, 2, 2, 2, 'Easy', 'Remote Work', 'Female', 34, 'Canada', 'Bachelors', 'Black or African American'),
('62a3a3800f8c8599d5afd4db', '2022-06-10', '16:03', '00:01:45', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Nonprofit', 'Python', 9, 10, 10, 9, 8, 10, 'Difficult', 'Better Salary', 'Female', 31, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3a4fdbae91e4b8b83ab6f', '2022-06-10', '16:09', '00:03:52', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 4, 9, 8, 8, 6, 10, 'Neither easy nor difficult', 'Better Salary', 'Female', 33, 'Canada', 'Masters', 'Black or African American'),
('62a3a7f50a77c1a77f668221', '2022-06-10', '16:22', '00:00:59', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 2, 5, 5, 5, 5, 5, 'Very Difficult', 'Remote Work', 'Male', 23, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3a90f24a262602738e800', '2022-06-10', '16:26', '00:01:26', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Other:Mainly use Excel', 3, 10, 9, 10, 5, 0, 'Neither easy nor difficult', 'Better Salary', 'Female', 25, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3a9dbd8c00e9f541a93eb', '2022-06-10', '16:30', '00:01:54', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 4, 4, 4, 5, 2, 1, 'Difficult', 'Better Salary', 'Male', 29, 'Other (Please Specify):Iran', 'Masters', 'White or Caucasian'),
('62a3aaa3cec54911e9cb1724', '2022-06-10', '16:33', '00:02:16', 'Other (Please Specify):Analytics Engineer', 'Yes', '41k-65k', 'Healthcare', 'R', 5, 7, 9, 8, 8, 8, 'Neither easy nor difficult', 'Better Salary', 'Female', 29, 'United States', 'Masters', 'Black or African American'),
('62a3ab320f8c8599d5afdfa8', '2022-06-10', '16:36', '00:01:45', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'R', 3, 4, 4, 4, 4, 2, 'Easy', 'Better Salary', 'Male', 31, 'India', 'Masters', 'Asian or Asian American'),
('62a3abacd8c00e9f541a96eb', '2022-06-10', '16:38', '00:01:33', 'Student/Looking/None', 'No', '0-40k', 'Real Estate', 'R', 0, 5, 0, 0, 0, 0, 'Very Difficult', 'Remote Work', 'Male', 34, 'Other (Please Specify):South Africa ', 'High School', 'Black or African American'),
('62a3ac4bf8f756164585ea83', '2022-06-10', '16:40', '00:02:04', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 3, 2, 4, 3, 7, 8, 'Easy', 'Good Work/Life Balance', 'Male', 26, 'Other (Please Specify):Bangladesh ', 'Bachelors', 'Other (Please Specify):Bangladeshi'),
('62a3ad35cec54911e9cb1b5c', '2022-06-10', '16:44', '00:01:34', 'Other (Please Specify):Jr. Data Scientist', 'No', '86k-105k', 'Healthcare', 'Python', 4, 6, 5, 6, 6, 4, 'Neither easy nor difficult', 'Remote Work', 'Female', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3ae69bc6861bf3177900d', '2022-06-10', '16:49', '00:02:55', 'Other (Please Specify):Continuous Quality Improvement Specialist', 'Yes', '41k-65k', 'Other (Please Specify):Law Enforcement', 'Other:DAX', 3, 6, 9, 6, 5, 10, 'Difficult', 'Other (Please Specify):Mentorship from leading Data Analyst', 'Male', 27, 'United States', 'Masters', 'Black or African American'),
('62a3af26cec54911e9cb1f3a', '2022-06-10', '16:52', '00:01:42', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):last mile delivery logistics', 'Python', 8, 5, 9, 6, 6, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3af66f8f756164585eeb8', '2022-06-10', '16:53', '00:03:01', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 4, 5, 4, 4, 3, 4, 'Very Difficult', 'Better Salary', 'Female', 26, 'United States', 'Masters', 'Asian or Asian American'),
('62a3b135b4da29969c63b1ed', '2022-06-10', '17:01', '00:01:18', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'R', 2, 5, 5, 5, 4, 5, 'Easy', 'Better Salary', 'Male', 24, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3b255d8c00e9f541a9fd5', '2022-06-10', '17:06', '00:02:18', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Retail', 'Python', 4, 6, 3, 4, 4, 2, 'Easy', 'Better Salary', 'Female', 28, 'Other (Please Specify):Ire', 'Masters', 'Other (Please Specify):Indian'),
('62a3b314f408bae018ee0938', '2022-06-10', '17:09', '00:01:18', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Manufacturing', 'R', 8, 8, 10, 9, 7, 5, 'Easy', 'Better Salary', 'Male', 29, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3b3f6bc6861bf3177973b', '2022-06-10', '17:13', '00:01:02', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 3, 2, 1, 1, 0, 2, 'Very Difficult', 'Better Salary', 'Female', 26, 'United States', 'Masters', 'Asian or Asian American'),
('62a3ba4dbc6861bf31779f24', '2022-06-10', '17:40', '00:01:19', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Arrosp', 'Python', 3, 5, 3, 3, 1, 1, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a3baa624a262602738ff27', '2022-06-10', '17:41', '00:04:19', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 6, 8, 7, 6, 2, 4, 'Easy', 'Other (Please Specify):Intresting work', 'Male', 25, 'Other (Please Specify):France', 'Masters', 'White or Caucasian'),
('62a3bc00d8c00e9f541aad66', '2022-06-10', '17:47', '00:01:30', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'R', 5, 7, 7, 3, 7, 9, 'Difficult', 'Better Salary', 'Female', 26, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3bf1b0a77c1a77f66a347', '2022-06-10', '18:00', '00:05:36', 'Data Engineer', 'Yes', '125k-150k', 'Healthcare', 'Python', 6, 3, 9, 5, 8, 8, 'Neither easy nor difficult', 'Remote Work', 'Female', 38, 'United States', 'Masters', 'White or Caucasian'),
('62a3c021f8f756164586043f', '2022-06-10', '18:05', '00:02:00', 'Other (Please Specify)', 'Yes', '0-40k', 'Other (Please Specify):Demography and Social Statistics ', 'Other:SQL', 0, 3, 3, 3, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Female', 20, 'Other (Please Specify):Nigeria ', 'High School', 'Black or African American'),
('62a3c1b1bc6861bf3177aa8c', '2022-06-10', '18:12', '00:02:04', 'Data Analyst', 'No', '66k-85k', 'Education', 'Other:SQL', 4, 6, 7, 7, 2, 2, 'Neither easy nor difficult', 'Remote Work', 'Female', 45, 'United States', 'Masters', 'Black or African American'),
('62a3c30324a26260273909b9', '2022-06-10', '18:17', '00:01:18', 'Data Analyst', 'No', '86k-105k', 'Other (Please Specify):Marketing ', 'Python', 5, 3, 5, 6, 6, 4, 'Difficult', 'Good Work/Life Balance', 'Male', 27, 'Canada', 'Masters', 'Other (Please Specify):Pakistani'),
('62a3c476bc6861bf3177ad9d', '2022-06-10', '18:23', '00:02:58', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Consulti', 'Python', 3, 7, 7, 7, 7, 6, 'Difficult', 'Good Culture', 'Male', 28, 'Canada', 'Masters', 'Asian or Asian American'),
('62a3c5f2cec54911e9cb3d9b', '2022-06-10', '18:30', '00:04:30', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):i`m currently student', 'R', 2, 10, 10, 10, 10, 3, 'Neither easy nor difficult', 'Remote Work', 'Female', 29, 'Other (Please Specify):Germany', 'Bachelors', 'Other (Please Specify):Russian'),
('62a3c7f1bc6861bf3177b06e', '2022-06-10', '18:38', '00:01:57', 'Other (Please Specify):PMO', 'No', '41k-65k', 'Tech', 'C/C++', 7, 7, 7, 7, 7, 7, 'Neither easy nor difficult', 'Better Salary', 'Female', 43, 'Other (Please Specify):Singapore', 'High School', 'Asian or Asian American'),
('62a3c8652e54c9003e54103e', '2022-06-10', '18:40', '00:02:27', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 0, 5, 9, 9, 0, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 26, 'Other (Please Specify):Antigua ', 'Bachelors', 'Black or African American'),
('62a3ca44bae91e4b8b83dcd4', '2022-06-10', '18:48', '00:04:17', 'Student/Looking/None', 'No', '41k-65k', 'Tech', 'Other:SQL', 7, 8, 7, 7, 8, 7, 'Neither easy nor difficult', 'Other (Please Specify):Mix of better salary, good work/life balance, remote work and good culture', 'Female', 47, 'United States', 'Bachelors', 'Black or African American'),
('62a3cafff8d5efcc22f8b5cb', '2022-06-10', '18:51', '00:01:42', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Python', NULL, NULL, NULL, 8, 10, 10, 'Easy', 'Remote Work', 'Male', 23, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62a3cbfef8d5efcc22f8b6f1', '2022-06-10', '18:55', '00:01:20', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 0, 1, 1, 1, 1, 2, 'Very Difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Egypt', 'Bachelors', 'Other (Please Specify):Egyp'),
('62a3cde8f8f7561645861366', '2022-06-10', '19:04', '00:02:02', 'Other (Please Specify):System Administrator', 'No', '0-40k', 'Finance', 'Python', 6, 6, 3, 7, 2, 4, 'Very Difficult', 'Other (Please Specify):Learning opportunity', 'Male', 32, 'Other (Please Specify):Poland', 'Masters', 'White or Caucasian'),
('62a3cfed0f8c8599d5b00b12', '2022-06-10', '19:12', '00:01:09', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 1, 10, 10, 5, 3, 1, 'Neither easy nor difficult', 'Better Salary', 'Female', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3d21ef3072dd8926314d1', '2022-06-10', '19:22', '00:02:40', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 1, 2, 10, 1, 2, 8, 'Difficult', 'Remote Work', 'Female', 29, 'Other (Please Specify):Venezuela', 'Bachelors', 'Hispanic or Latino'),
('62a3d37c0a77c1a77f66bc0e', '2022-06-10', '19:27', '00:01:11', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'Other:SQL', 3, 7, 5, 5, 3, 3, 'Neither easy nor difficult', 'Better Salary', 'Female', 33, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3d8dbf8f7561645861f9d', '2022-06-10', '19:50', '00:04:51', 'Data Analyst', 'No', '106k-125k', 'Education', 'Python', 6, 10, 10, 10, 7, 6, 'Easy', 'Other (Please Specify):Learning New Things', 'Male', 36, 'United States', 'Masters', 'Asian or Asian American'),
('62a3d9697dc029e2d66cf087', '2022-06-10', '19:53', '00:01:32', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Python', 4, 10, 9, 3, 0, 10, 'Difficult', 'Good Work/Life Balance', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3dac9f3072dd892631e12', '2022-06-10', '19:59', '00:03:19', 'Data Scientist', 'No', '150k-225k', 'Other (Please Specify)', 'Python', 8, 7, 8, 7, 7, 8, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 38, 'United States', 'Masters', 'White or Caucasian'),
('62a3dc3ab4da29969c63e3d7', '2022-06-10', '20:05', '00:03:42', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Oil and gas', 'R', 3, 2, 6, 6, 5, 4, 'Difficult', 'Good Work/Life Balance', 'Male', 30, 'United States', 'Masters', 'Other (Please Specify):Half black and half white'),
('62a3e2abf8f75616458628d1', '2022-06-10', '20:32', '00:01:48', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 5, 6, 6, 6, 7, 'Difficult', 'Good Culture', 'Male', 35, 'United States', 'Masters', 'Black or African American'),
('62a3e32bd8c00e9f541ad5f0', '2022-06-10', '20:34', '00:01:44', 'Other (Please Specify):Teacher', 'No', '41k-65k', 'Education', 'Other:SQL because that is all I know really well so far. ', 0, 1, 10, 5, 0, 0, 'Difficult', 'Better Salary', 'Female', 42, 'United States', 'Bachelors', 'White or Caucasian'),
('62a3ecf7bc6861bf3177d5c2', '2022-06-10', '21:16', '00:01:40', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Python', 3, 5, 4, 6, 4, 6, 'Easy', 'Remote Work', 'Male', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a3eea9bae91e4b8b8401a4', '2022-06-10', '21:23', '00:01:57', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):None', 'Python', 0, 0, 0, 0, 0, 4, 'Very Difficult', 'Better Salary', 'Female', 25, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a3f39df8d5efcc22f8ddc2', '2022-06-10', '21:45', '01:09:45', 'Data Analyst', 'No', '86k-105k', 'Healthcare', 'Python', 5, 9, 5, 2, 5, 1, 'Difficult', 'Good Culture', 'Female', 28, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a3f6a25d257a28a30e9d02', '2022-06-10', '21:57', '00:04:54', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Manuf', 'Python', 5, 10, 8, 5, 7, 10, 'Very Difficult', 'Other (Please Specify):Salary and expo', 'Male', 28, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a3f6d9bae91e4b8b8408ca', '2022-06-10', '21:58', '00:00:59', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Student', 'Other:Sql', 0, 0, 0, 0, 0, 0, 'Neither easy nor difficult', 'Better Salary', 'Male', 20, 'Other (Please Specify):Malaysia', 'High School', 'Asian or Asian American'),
('62a3fc7c7dc029e2d66d10e8', '2022-06-10', '22:22', '00:02:26', 'Data Analyst', 'Yes', '106k-125k', 'Construction', 'Other:VBA', 7, 8, 7, 7, 10, 10, 'Easy', 'Good Culture', 'Male', 33, 'United States', 'Masters', 'Hispanic or Latino'),
('62a3fe0d5d257a28a30ea3c8', '2022-06-10', '22:29', '00:12:09', 'Data Analyst', 'No', '66k-85k', 'Tech', 'Python', 8, 6, 7, 7, 8, 8, 'Easy', 'Better Salary', 'Male', 23, 'United States', 'Associates', 'White or Caucasian'),
('62a3fea50a77c1a77f66e41b', '2022-06-10', '22:32', '00:00:43', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'R', 4, 5, 7, 7, 5, 7, 'Neither easy nor difficult', 'Better Salary', 'Female', 35, 'Other (Please Specify):Brazik', 'Bachelors', 'Hispanic or Latino'),
('62a40276bc6861bf3177e6fd', '2022-06-10', '22:48', '00:04:01', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Automobile Industry', 'Python', 2, 2, 3, 3, 2, 3, 'Difficult', 'Good Work/Life Balance', 'Male', 22, 'India', 'Bachelors', 'Asian or Asian American'),
('62a403bbf8d5efcc22f8eb18', '2022-06-10', '22:53', '00:02:40', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 5, 10, 5, 6, 6, 8, 'Very Difficult', 'Better Salary', 'Male', 33, 'India', 'Bachelors', 'Asian or Asian American'),
('62a403d30f8c8599d5b03d65', '2022-06-10', '22:54', '00:00:59', 'Data Engineer', 'No', '0-40k', 'Real Estate', 'Python', 1, 7, 7, 7, 1, 2, 'Very Easy', 'Better Salary', 'Male', 22, 'United States', 'Bachelors', 'White or Caucasian'),
('62a4044acf25554317312a81', '2022-06-10', '22:56', '00:03:27', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Distribution', 'R', 7, 8, 8, 7, 5, 9, 'Neither easy nor difficult', 'Remote Work', 'Male', 35, 'United States', 'Bachelors', 'White or Caucasian'),
('62a4061bf408bae018ee5deb', '2022-06-10', '23:03', '00:02:55', 'Data Analyst', 'Yes', '66k-85k', 'Agriculture', 'Other:SQL', 8, 5, 6, 4, 4, 8, 'Easy', 'Good Work/Life Balance', 'Female', 37, 'United States', 'Masters', 'White or Caucasian'),
('62a40726575fa3a5ae89d990', '2022-06-10', '23:08', '00:00:51', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Python', 4, NULL, NULL, NULL, NULL, NULL, 'Very Easy', 'Better Salary', 'Male', 22, 'United States', 'Associates', 'Other (Please Specify):7'),
('62a4098124a2626027394ddc', '2022-06-10', '23:18', '00:02:12', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Python', 10, 10, 10, 7, 10, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 36, 'United States', 'Masters', 'White or Caucasian'),
('62a40c99575fa3a5ae89de4b', '2022-06-10', '23:31', '00:02:29', 'Data Scientist', 'Yes', '86k-105k', 'Other (Please Specify):Fmcg', 'Python', 6, 5, 8, 8, 7, 9, 'Easy', 'Good Work/Life Balance', 'Male', 26, 'India', 'Bachelors', 'Hispanic or Latino'),
('62a40d86d8c00e9f541afb5e', '2022-06-10', '23:35', '00:05:15', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Market research', 'R', 3, 2, 6, 5, 5, 6, 'Neither easy nor difficult', 'Good Culture', 'Female', 25, 'Other (Please Specify):South Korea', 'Bachelors', 'Asian or Asian American'),
('62a40da3cf255543173132e2', '2022-06-10', '23:36', '00:02:55', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):NGO - Legislation ', 'R', 4, 6, 6, 5, 5, 6, 'Neither easy nor difficult', 'Remote Work', 'Female', 34, 'United States', 'High School', 'White or Caucasian'),
('62a40dfa5d257a28a30eb110', '2022-06-10', '23:37', '00:02:58', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Culinary', 'Python', 4, 8, 8, 8, 7, 8, 'Difficult', 'Remote Work', 'Male', 33, 'Other (Please Specify):Chile', 'Bachelors', 'Hispanic or Latino'),
('62a410b5cec54911e9cb8262', '2022-06-10', '23:49', '00:02:00', 'Student/Looking/None', 'No', '41k-65k', 'Other (Please Specify):Retail', 'Python', 0, 4, 0, 1, 4, 2, 'Very Difficult', 'Good Work/Life Balance', 'Male', 37, 'United States', 'Bachelors', 'White or Caucasian'),
('62a41135bc6861bf3177f3d8', '2022-06-10', '23:51', '00:01:27', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Marketing', 'Python', 5, 5, 7, 6, 4, 6, 'Very Easy', 'Better Salary', 'Female', 54, 'United States', 'High School', 'White or Caucasian'),
('62a41795cec54911e9cb8854', '2022-06-11', '0:18', '00:00:59', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 2, NULL, NULL, NULL, NULL, NULL, 'Very Easy', 'Better Salary', 'Male', 26, 'India', 'Bachelors', 'Asian or Asian American'),
('62a41964d8c00e9f541b061d', '2022-06-11', '0:26', '00:01:49', 'Data Analyst', 'No', '41k-65k', 'Education', 'R', 4, 7, 7, 7, 2, 7, 'Neither easy nor difficult', 'Better Salary', 'Female', 27, 'United States', 'Masters', 'Hispanic or Latino'),
('62a41968f8d5efcc22f8fd44', '2022-06-11', '0:26', '00:02:20', 'Database Developer', 'Yes', '0-40k', 'Telecommunication', 'Other:Sql', 2, 3, 6, 6, 3, 5, 'Difficult', 'Better Salary', 'Male', 24, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a41e23bc6861bf3177fffb', '2022-06-11', '0:46', '00:01:41', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 5, 5, 5, 5, 5, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'Other (Please Specify):Egypt', 'Bachelors', 'White or Caucasian'),
('62a421cebc6861bf317803f5', '2022-06-11', '1:02', '00:01:29', 'Other (Please Specify):Consultant', 'Yes', '0-40k', 'Other (Please Specify):Consulting', 'Python', 3, 4, 5, 3, 2, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'Other (Please Specify):Panama', 'Bachelors', 'White or Caucasian'),
('62a42243f8d5efcc22f90c55', '2022-06-11', '1:04', '00:01:37', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):none', 'Python', 0, 0, 0, 0, 0, 0, 'Very Difficult', 'Remote Work', 'Male', 25, 'Other (Please Specify):indonesia', 'Bachelors', 'Asian or Asian American'),
('62a424ccd8c00e9f541b114e', '2022-06-11', '1:14', '00:02:47', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 1, 7, 7, 7, 7, 1, 'Difficult', 'Better Salary', 'Female', 28, 'United Kingdom', 'Masters', 'Black or African American'),
('62a42527b4da29969c6423f7', '2022-06-11', '1:16', '00:01:23', 'Other (Please Specify):Business Intelligence Developer', 'No', '41k-65k', 'Education', 'Python', 3, 6, 5, 5, 3, 4, 'Easy', 'Remote Work', 'Male', 21, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a425ec2e54c9003e5467bf', '2022-06-11', '1:19', '00:01:15', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'Other', 4, 4, 5, 5, 4, 6, 'Difficult', 'Good Work/Life Balance', 'Female', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a427190a77c1a77f67095c', '2022-06-11', '1:24', '00:03:20', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 3, 5, 5, 5, 5, 2, 'Neither easy nor difficult', 'Remote Work', 'Male', 30, 'Other (Please Specify):Ghana', 'Masters', 'Black or African American'),
('62a429f0f3072dd892636396', '2022-06-11', '1:36', '00:02:39', 'Data Analyst', 'No', '0-40k', 'Education', 'Python', 0, 10, 0, 9, 5, 10, 'Easy', 'Remote Work', 'Male', 24, 'Other (Please Specify):Angola', 'Associates', 'Black or African American'),
('62a42d6ef8d5efcc22f9178a', '2022-06-11', '1:51', '00:02:01', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 7, 4, 6, 5, 6, 6, 'Difficult', 'Remote Work', 'Male', 26, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a436fd24a2626027397c93', '2022-06-11', '2:32', '00:03:23', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', NULL, NULL, NULL, NULL, NULL, 5, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 19, 'Other (Please Specify):Bangladesh ', 'High School', 'Asian or Asian American'),
('62a43e86f408bae018ee913a', '2022-06-11', '3:04', '00:04:03', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Customer support ', 'Python', 5, 6, 6, 5, 1, 3, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 92, 'India', 'Masters', 'Asian or Asian American'),
('62a43ed4f8d5efcc22f92d0a', '2022-06-11', '3:05', '00:02:33', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 1, 8, 5, 1, 7, 8, 'Neither easy nor difficult', 'Remote Work', 'Male', 28, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a43f43f408bae018ee9281', '2022-06-11', '3:07', '00:01:34', 'Student/Looking/None', 'Yes', '0-40k', 'Education', 'Python', 0, 1, 2, 2, 1, 1, 'Neither easy nor difficult', 'Better Salary', 'Female', 24, 'India', 'Masters', 'Asian or Asian American'),
('62a440ab575fa3a5ae8a1418', '2022-06-11', '3:13', '00:03:39', 'Other (Please Specify):Informatics Specialist', 'No', '41k-65k', 'Healthcare', 'Python', 7, 10, 10, 10, 5, 10, 'Easy', 'Better Salary', 'Male', 25, 'United States', 'Masters', 'Asian or Asian American'),
('62a441e3575fa3a5ae8a1552', '2022-06-11', '3:18', '00:04:04', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 4, 5, 5, 5, 6, 6, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 42, 'United Kingdom', 'Masters', 'Black or African American'),
('62a446faf8f7561645868c60', '2022-06-11', '3:40', '00:01:05', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 2, 3, 3, 3, 3, 3, 'Difficult', 'Better Salary', 'Male', 21, 'India', 'Bachelors', 'Asian or Asian American'),
('62a448832e54c9003e5491c5', '2022-06-11', '3:47', '00:02:36', 'Data Analyst', 'No', '66k-85k', 'Healthcare', 'Python', 7, 8, 9, 7, 7, 6, 'Easy', 'Better Salary', 'Male', 24, 'United States', 'Bachelors', 'White or Caucasian'),
('62a44ae2f8f7561645869335', '2022-06-11', '3:57', '00:02:32', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Python', 4, 7, 6, 6, 6, 7, 'Neither easy nor difficult', 'Better Salary', 'Female', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a44bc7bc6861bf31783829', '2022-06-11', '4:01', '00:01:16', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Cosmetics ', 'Python', 2, 8, 8, 9, 8, 10, 'Difficult', 'Better Salary', 'Male', 30, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a44ea3f408bae018eea62a', '2022-06-11', '4:13', '00:05:51', 'Data Engineer', 'Yes', '86k-105k', 'Other (Please Specify):Digital Mar', 'Other:SQL', 6, 10, 10, 10, 10, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 27, 'United States', 'Bachelors', 'Black or African American'),
('62a4514ff408bae018eea94d', '2022-06-11', '4:24', '00:02:01', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 0, 4, 1, 0, 1, 3, 'Easy', 'Better Salary', 'Male', 28, 'India', 'Bachelors', 'Asian or Asian American'),
('62a45a140a77c1a77f67469d', '2022-06-11', '5:02', '00:02:27', 'Data Analyst', 'No', '66k-85k', 'Real Estate', 'Other:SQL', 6, 8, 7, 7, 5, 6, 'Easy', 'Better Salary', 'Female', 29, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a45c8bf3072dd89263a493', '2022-06-11', '5:12', '00:02:43', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Home maker ', 'Python', 0, 0, 0, 0, 0, 0, 'Easy', 'Good Work/Life Balance', 'Female', 26, 'India', 'Bachelors', 'Asian or Asian American'),
('62a45f8c0f8c8599d5b09d40', '2022-06-11', '5:25', '00:02:47', 'Data Engineer', 'Yes', '0-40k', 'Finance', 'Python', 3, 3, 3, 3, 3, 4, 'Neither easy nor difficult', 'Remote Work', 'Male', 29, 'Other (Please Specify):Africa (Nigeria)', 'Bachelors', 'Black or African American'),
('62a4604d0a77c1a77f674e29', '2022-06-11', '5:28', '00:01:51', 'Other (Please Specify):Business Analys', 'No', '66k-85k', 'Finance', 'Other:None', 3, 5, 7, 2, 5, 7, 'Easy', 'Remote Work', 'Male', 60, 'United Kingdom', 'Masters', 'White or Caucasian'),
('62a46a66f8d5efcc22f95a7a', '2022-06-11', '6:11', '00:01:55', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 5, 8, 8, 5, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62a46ad7d8c00e9f541b664a', '2022-06-11', '6:13', '00:03:13', 'Other (Please Specify):Finance Analyst ', 'No', '0-40k', 'Construction', 'R', 0, 0, 1, 3, 2, 1, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 37, 'Other (Please Specify):Nigeria ', 'Masters', 'Other (Please Specify):African '),
('62a46dbecf25554317319e48', '2022-06-11', '6:26', '00:01:31', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 6, 8, 3, 4, 5, 1, 'Neither easy nor difficult', 'Better Salary', 'Female', 30, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a475dcf408bae018eed15c', '2022-06-11', '7:00', '00:04:48', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 0, 1, 2, 1, 0, 3, 'Neither easy nor difficult', 'Better Salary', 'Female', 27, 'Other (Please Specify):Nigeria ', 'Masters', 'Black or African American'),
('62a477f0b4da29969c64892f', '2022-06-11', '7:09', '00:01:04', 'Data Scientist', 'Yes', '225k+', 'Tech', 'R', 5, 6, 5, 5, 6, 6, 'Difficult', 'Other (Please Specify):In office work', 'Male', 31, 'United States', 'PhD', 'White or Caucasian'),
('62a47947cec54911e9cbf6b2', '2022-06-11', '7:15', '00:02:11', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):I am student. ', 'R', 10, 10, 10, 10, 10, 10, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 24, 'United Kingdom', 'Masters', 'Asian or Asian American'),
('62a47c587dc029e2d66d9782', '2022-06-11', '7:28', '00:03:11', 'Data Analyst', 'No', '0-40k', 'Finance', 'Other:MATLAB', 0, 6, 6, 6, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 20, 'United States', 'Bachelors', 'Black or African American'),
('62a47e3ef3072dd89263c8c0', '2022-06-11', '7:36', '00:02:30', 'Other (Please Specify):Web Developer', 'No', '0-40k', 'Tech', 'R', 2, 1, 4, 1, 1, 1, 'Easy', 'Good Work/Life Balance', 'Male', 24, 'India', 'Bachelors', 'Asian or Asian American'),
('62a47e812e54c9003e54d789', '2022-06-11', '7:37', '00:01:32', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Manufacturing', 'R', 3, 6, 7, 6, 4, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 24, 'Other (Please Specify):Romania', 'Bachelors', 'White or Caucasian'),
('62a47ea87dc029e2d66d9b60', '2022-06-11', '7:38', '00:01:30', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Unemployed, trying to switch career', 'R', 0, 1, 3, 0, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 41, 'Other (Please Specify):Spain', 'Bachelors', 'Hispanic or Latino'),
('62a47f1e0a77c1a77f677174', '2022-06-11', '7:40', '00:02:12', 'Data Analyst', 'Yes', '86k-105k', 'Tech', 'R', 8, 8, 8, 8, 8, 8, 'Difficult', 'Better Salary', 'Male', 41, 'United States', 'Bachelors', 'White or Caucasian'),
('62a48566b4da29969c64995a', '2022-06-11', '8:07', '00:01:52', 'Other (Please Specify):Manager ', 'No', '150k-225k', 'Other (Please Specify):Retail', 'Python', 9, 8, 9, 10, 8, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 43, 'United States', 'Bachelors', 'White or Caucasian'),
('62a48612d8c00e9f541b86b8', '2022-06-11', '8:09', '00:01:53', 'Data Analyst', 'No', '66k-85k', 'Healthcare', 'Python', 7, 7, 8, 4, 6, 9, 'Easy', 'Remote Work', 'Female', 38, 'United States', 'Bachelors', 'White or Caucasian'),
('62a487167dc029e2d66da73e', '2022-06-11', '8:14', '00:01:53', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Retail', 'Python', 5, 5, 5, 5, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 28, 'Other (Please Specify):Philippines', 'Bachelors', 'Asian or Asian American'),
('62a488197dc029e2d66da8a1', '2022-06-11', '8:18', '00:01:30', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'Python', 10, 8, 6, 10, 7, 5, 'Neither easy nor difficult', 'Good Culture', 'Female', 31, 'Other (Please Specify):Germany', 'Bachelors', 'Hispanic or Latino'),
('62a48c4c24a262602739e141', '2022-06-11', '8:36', '00:01:31', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Government', 'Other:SAS', 8, 7, 8, 6, 7, 8, 'Difficult', 'Good Work/Life Balance', 'Female', 28, 'United States', 'Masters', 'White or Caucasian'),
('62a48cbdf408bae018eeeccf', '2022-06-11', '8:38', '00:00:55', 'Data Analyst', 'No', '41k-65k', 'Healthcare', 'C/C++', 7, 8, 9, 9, 4, 9, 'Easy', 'Remote Work', 'Male', 23, 'United States', 'Masters', 'Asian or Asian American'),
('62a48d4df8d5efcc22f98308', '2022-06-11', '8:40', '00:01:47', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Utilities ', 'Python', 5, 5, 4, 5, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United Kingdom', 'Bachelors', 'Black or African American'),
('62a48d562e54c9003e54ea2b', '2022-06-11', '8:40', '00:01:22', 'Other (Please Specify):Junior Software Engineer', 'No', '0-40k', 'Tech', 'R', 2, 5, 2, 8, 9, 10, 'Difficult', 'Remote Work', 'Male', 26, 'Other (Please Specify):Poland', 'Masters', 'White or Caucasian'),
('62a48da6b4da29969c64a3a5', '2022-06-11', '8:42', '00:00:47', 'Data Scientist', 'Yes', '125k-150k', 'Finance', 'Python', 9, 4, 8, 7, 5, 6, 'Difficult', 'Good Work/Life Balance', 'Male', 35, 'United States', 'Bachelors', 'White or Caucasian'),
('62a49012f408bae018eef16d', '2022-06-11', '8:52', '00:01:43', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Retail', 'R', 8, 9, 9, 7, 8, 8, 'Neither easy nor difficult', 'Remote Work', 'Male', 30, 'Other (Please Specify):Denmark', 'Masters', 'White or Caucasian'),
('62a491b3b4da29969c64a89e', '2022-06-11', '8:59', '00:01:38', 'Data Analyst', 'Yes', '86k-105k', 'Tech', 'R', 3, NULL, NULL, NULL, NULL, NULL, 'Neither easy nor difficult', 'Better Salary', 'Male', 35, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a4926ef408bae018eef4ee', '2022-06-11', '9:02', '00:02:06', 'Data Analyst', 'Yes', '0-40k', 'Telecommunication', 'Python', 0, 8, 5, 5, 2, 2, 'Easy', 'Better Salary', 'Male', 28, 'Other (Please Specify):Panama', 'Bachelors', 'Hispanic or Latino'),
('62a495d724a262602739ee07', '2022-06-11', '9:17', '00:02:01', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 0, 2, 3, 3, 2, 3, 'Easy', 'Good Work/Life Balance', 'Female', 24, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a49b3cb4da29969c64b5dc', '2022-06-11', '9:40', '00:04:32', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 8, 10, 7, 5, 6, 5, 'Neither easy nor difficult', 'Good Culture', 'Female', 34, 'United States', 'Bachelors', 'White or Caucasian'),
('62a49e087dc029e2d66dc57e', '2022-06-11', '9:52', '00:01:52', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 5, 4, 5, 3, 6, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 31, 'Other (Please Specify):Germany', 'Masters', 'White or Caucasian'),
('62a49e47b4da29969c64b9f9', '2022-06-11', '9:53', '00:01:06', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 0, 0, 0, 0, 0, 0, 'Difficult', 'Good Work/Life Balance', 'Male', 30, 'United Kingdom', 'Masters', 'Asian or Asian American'),
('62a49e5f24a262602739f9af', '2022-06-11', '9:53', '00:01:28', 'Data Engineer', 'Yes', '86k-105k', 'Other (Please Specify):Logistics', 'JavaScript', 4, 4, 1, 6, 1, 5, 'Difficult', 'Better Salary', 'Male', 40, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a49fe7b4da29969c64bbe1', '2022-06-11', '10:00', '00:02:02', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Consulting', 'R', 4, 10, 10, 10, 8, 6, 'Very Difficult', 'Better Salary', 'Male', 26, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a4a3d4f8d5efcc22f9a051', '2022-06-11', '10:16', '00:01:00', 'Data Analyst', 'No', '125k-150k', 'Healthcare', 'R', 9, 9, 6, 6, 6, 7, 'Neither easy nor difficult', 'Good Culture', 'Male', 25, 'United States', 'Bachelors', 'White or Caucasian'),
('62a4a8cb0a77c1a77f67a405', '2022-06-11', '10:38', '00:02:27', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Maritime', 'Other:Sql', NULL, 5, 8, 4, 8, 4, 'Easy', 'Good Culture', 'Male', 45, 'Other (Please Specify):Greece', 'Associates', 'White or Caucasian'),
('62a4abb30f8c8599d5b0fc24', '2022-06-11', '10:50', '00:03:12', 'Data Analyst', 'No', '41k-65k', 'Finance', 'R', 7, 9, 8, 6, 6, 9, 'Neither easy nor difficult', 'Good Culture', 'Male', 26, 'United States', 'Masters', 'Black or African American'),
('62a4afd87dc029e2d66ddb24', '2022-06-11', '11:08', '00:01:43', 'Data Scientist', 'No', '0-40k', 'Finance', 'Python', 7, 7, 8, 6, 6, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 26, 'India', 'Masters', 'Other (Please Specify):Indian'),
('62a4b085cec54911e9cc3afe', '2022-06-11', '11:11', '00:02:44', 'Other (Please Specify):Researchers ', 'Yes', '0-40k', 'Finance', 'Python', 3, 2, 4, 2, 2, 3, 'Difficult', 'Better Salary', 'Male', 23, 'India', 'Masters', 'Asian or Asian American'),
('62a4b23f5d257a28a30f6b8c', '2022-06-11', '11:18', '00:00:56', 'Data Engineer', 'Yes', '106k-125k', 'Tech', 'Python', 4, 4, 4, 4, 5, 6, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 25, 'India', 'Masters', 'Asian or Asian American'),
('62a4b29a5d257a28a30f6c63', '2022-06-11', '11:19', '00:01:11', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'R', 4, 5, 6, 6, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 33, 'United States', 'High School', 'White or Caucasian'),
('62a4b2e5f8f75616458712af', '2022-06-11', '11:21', '00:02:02', 'Other (Please Specify):Senior Business Analyst', 'No', '0-40k', 'Other (Please Specify):Ecommerce', 'Other:Sql', 6, 3, 3, 6, 6, 4, 'Very Easy', 'Other (Please Specify):Learning new skills', 'Male', 33, 'India', 'Bachelors', 'Asian or Asian American'),
('62a4b6c30a77c1a77f67b54c', '2022-06-11', '11:37', '00:01:13', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'R', 7, 8, 7, 8, 3, 4, 'Easy', 'Good Culture', 'Male', 27, 'United States', 'Bachelors', 'White or Caucasian'),
('62a4bf07b4da29969c64e4f8', '2022-06-11', '12:12', '00:01:59', 'Data Analyst', 'Yes', '106k-125k', 'Tech', 'Python', 9, 9, 9, 8, 8, 9, 'Difficult', 'Remote Work', 'Female', 28, 'United States', 'Masters', 'Hispanic or Latino'),
('62a4bf3a0a77c1a77f67bef2', '2022-06-11', '12:13', '00:03:18', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 5, 6, 7, 6, 6, 7, 'Very Easy', 'Better Salary', 'Male', 32, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a4c49a575fa3a5ae8aadf4', '2022-06-11', '12:36', '00:01:24', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 2, 6, 3, 6, 6, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 35, 'India', 'Masters', 'Asian or Asian American'),
('62a4c57af3072dd8926421ac', '2022-06-11', '12:40', '00:01:49', 'Data Analyst', 'Yes', '86k-105k', 'Real Estate', 'Python', 8, 9, 10, 10, 9, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 34, 'United States', 'Masters', 'Hispanic or Latino'),
('62a4c6060a77c1a77f67c772', '2022-06-11', '12:42', '00:01:39', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Electronics', 'Python', 9, 8, 3, 5, 2, 4, 'Easy', 'Better Salary', 'Male', 27, 'Other (Please Specify):Germany', 'Masters', 'White or Caucasian'),
('62a4c7d0f8f7561645872912', '2022-06-11', '12:50', '00:02:30', 'Other (Please Specify):Data Coordinator', 'Yes', '66k-85k', 'Education', 'R', 4, 5, 5, 3, 3, 4, 'Easy', 'Good Culture', 'Female', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a4cdfad8c00e9f541bdc6b', '2022-06-11', '13:16', '00:02:06', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Logistics and warehousing', 'Python', 8, 9, 9, 9, 9, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 34, 'United States', 'Masters', 'White or Caucasian'),
('62a4ce2bbae91e4b8b84f3db', '2022-06-11', '13:17', '00:02:20', 'Other (Please Specify):Student working as a data analyst intern ', 'No', '41k-65k', 'Other (Please Specify):Utilities', 'Python', 3, 10, 6, 5, 7, 8, 'Neither easy nor difficult', 'Remote Work', 'Female', 22, 'United States', 'Bachelors', 'White or Caucasian'),
('62a4cffeb4da29969c64f6a1', '2022-06-11', '13:25', '00:01:02', 'Data Analyst', 'Yes', '0-40k', 'Finance', 'Python', 2, 2, 5, 5, 2, 3, 'Very Difficult', 'Good Work/Life Balance', 'Female', 33, 'India', 'Masters', 'Asian or Asian American'),
('62a4d08bf3072dd892642d2c', '2022-06-11', '13:27', '00:01:53', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 8, 9, 9, 9, 9, 9, 'Neither easy nor difficult', 'Better Salary', 'Female', 26, 'India', 'Masters', 'Asian or Asian American'),
('62a4d13bbae91e4b8b84f89b', '2022-06-11', '13:30', '00:01:36', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 0, 5, 8, 6, 5, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'Other (Please Specify):Argentina', 'Bachelors', 'Hispanic or Latino'),
('62a4d74c5d257a28a30f97fc', '2022-06-11', '13:56', '00:05:32', 'Other (Please Specify):Driver', 'No', '0-40k', 'Other (Please Specify):Public transport', 'Python', 2, 2, 7, 4, 8, 1, 'Difficult', 'Remote Work', 'Male', 42, 'United Kingdom', 'Bachelors', 'Other (Please Specify):Bla'),
('62a4d7f6bae91e4b8b84ffed', '2022-06-11', '13:59', '00:02:06', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Urbanism', 'R', 4, 10, 2, 3, 2, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):Morocco', 'Masters', 'Other (Please Specify):Moroccan'),
('62a4d9d4bae91e4b8b8501f1', '2022-06-11', '14:07', '00:01:22', 'Data Scientist', 'Yes', '106k-125k', 'Tech', 'Other:Sql', 10, 9, 8, 8, 9, 10, 'Difficult', 'Better Salary', 'Male', 25, 'United States', 'Associates', 'White or Caucasian'),
('62a4dd63f408bae018ef4e51', '2022-06-11', '14:22', '00:01:00', 'Data Analyst', 'Yes', '41k-65k', 'Construction', 'Python', 4, 6, 6, 6, 5, 7, 'Easy', 'Better Salary', 'Male', 32, 'United States', 'Bachelors', 'Black or African American'),
('62a4e34d7dc029e2d66e10b9', '2022-06-11', '14:47', '00:01:56', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 4, 5, 5, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 31, 'Other (Please Specify):Germany', 'Masters', 'Asian or Asian American'),
('62a4e4c90f8c8599d5b13d8f', '2022-06-11', '14:54', '10:34:43', 'Data Analyst', 'Yes', '150k-225k', 'Education', 'Python', 8, 7, 5, 4, 7, 7, 'Easy', 'Remote Work', 'Male', 30, 'Other (Please Specify):UAE', 'High School', 'White or Caucasian'),
('62a4e5aed8c00e9f541bf48c', '2022-06-11', '14:57', '00:02:26', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Reta', 'Python', 0, 6, 6, 2, 0, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 23, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a4f6eef3072dd892645775', '2022-06-11', '16:11', '00:02:17', 'Other (Please Specify):Data manager', 'No', '66k-85k', 'Education', 'R', 7, 7, 6, 7, 6, 6, 'Easy', 'Remote Work', 'Female', 31, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a4fe370f8c8599d5b158c4', '2022-06-11', '16:42', '00:02:40', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Avia', 'Python', 7, 5, 9, 9, 4, 9, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 29, 'Other (Please Specify):Fin', 'Masters', 'Black or African American'),
('62a5008c5d257a28a30fbde5', '2022-06-11', '16:52', '00:02:38', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 5, 4, 4, 5, 7, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 24, 'Other (Please Specify):Nigeria', 'Bachelors', 'Other (Please Specify):African'),
('62a5038acec54911e9cc9526', '2022-06-11', '17:05', '00:02:38', 'Other (Please Specify):GIS Analyst ', 'No', '41k-65k', 'Other (Please Specify):State', 'Python', 2, 7, 6, 5, 6, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 36, 'United States', 'Masters', 'Asian or Asian American'),
('62a50775f8f756164587677b', '2022-06-11', '17:21', '00:02:29', 'Data Analyst', 'Yes', '41k-65k', 'Real Estate', 'R', 4, 6, 6, 6, 6, 6, 'Difficult', 'Remote Work', 'Female', 32, 'United States', 'Masters', 'White or Caucasian'),
('62a50eddf8d5efcc22fa1a4e', '2022-06-11', '17:53', '00:03:55', 'Other (Please Specify):Business Analyst', 'Yes', '86k-105k', 'Healthcare', 'Python', 8, 9, 7, 7, 7, 9, 'Difficult', 'Remote Work', 'Female', 36, 'United States', 'Bachelors', 'White or Caucasian'),
('62a511acbc6861bf3179178a', '2022-06-11', '18:05', '00:01:53', 'Data Engineer', 'No', '106k-125k', 'Healthcare', 'Other:SQL', 8, 6, 5, 2, 3, 2, 'Easy', 'Better Salary', 'Male', 30, 'United States', 'Bachelors', 'White or Caucasian'),
('62a5177d18134ddc75d0e9d8', '2022-06-11', '18:30', '00:05:09', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Looking for job', 'R', 0, 2, 2, 3, 3, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 42, 'Other (Please Specify):Sudan', 'Masters', 'Black or African American'),
('62a51aaacec54911e9cca93b', '2022-06-11', '18:43', '00:03:26', 'Data Analyst', 'Yes', '86k-105k', 'Healthcare', 'Other:DAX', 6, 6, 6, 5, 4, 4, 'Easy', 'Remote Work', 'Male', 53, 'Other (Please Specify):Austr', 'PhD', 'White or Caucasian'),
('62a51dc6575fa3a5ae8b09f3', '2022-06-11', '18:57', '00:03:17', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 1, 7, 4, 10, 10, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Kenya', 'High School', 'Other (Please Specify):Indian '),
('62a51fe0575fa3a5ae8b0c06', '2022-06-11', '19:06', '00:02:21', 'Data Analyst', 'No', '0-40k', 'Healthcare', 'Python', 1, 5, 4, 6, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 23, 'Other (Please Specify):Leba', 'Bachelors', 'White or Caucasian'),
('62a525aff8f75616458784dd', '2022-06-11', '19:30', '00:03:25', 'Data Analyst', 'Yes', '0-40k', 'Agriculture', 'Python', 2, 1, 3, 3, 3, 4, 'Difficult', 'Better Salary', 'Male', 36, 'Other (Please Specify):Saudi Arabia', 'Bachelors', 'Other (Please Specify):Arab '),
('62a52629b4da29969c654a94', '2022-06-11', '19:32', '00:09:42', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Other:Sql &  plsql', NULL, NULL, NULL, NULL, NULL, 6, 'Easy', 'Good Work/Life Balance', 'Male', 32, 'Other (Please Specify):United Arab Emirates ', 'Bachelors', 'Other (Please Specify):Sudanese African '),
('62a52725d8c00e9f541c3b4a', '2022-06-11', '19:37', '00:01:23', 'Data Analyst', 'No', '86k-105k', 'Finance', 'Python', 3, 6, 4, 2, 2, 3, 'Difficult', 'Other (Please Specify):Challenging / exciting problems', 'Male', 25, 'United States', 'Masters', 'Hispanic or Latino'),
('62a5390cb4da29969c655ccc', '2022-06-11', '20:53', '00:03:19', 'Data Engineer', 'Yes', '41k-65k', 'Tech', 'Python', 4, 4, 3, 4, 4, 5, 'Neither easy nor difficult', 'Remote Work', 'Female', 35, 'United Kingdom', 'Masters', 'Asian or Asian American'),
('62a53bc0bc6861bf31793947', '2022-06-11', '21:05', '00:01:19', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Sensors', 'R', 3, 4, 4, 5, 4, 4, 'Very Easy', 'Better Salary', 'Male', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62a53c84f3072dd8926495c9', '2022-06-11', '21:08', '00:01:07', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 2, 7, 9, 7, 3, 3, 'Difficult', 'Remote Work', 'Male', 22, 'United States', 'Bachelors', 'White or Caucasian'),
('62a54bccf3072dd89264a13b', '2022-06-11', '22:13', '00:01:43', 'Data Scientist', 'Yes', '86k-105k', 'Other (Please Specify):Automotive', 'Python', 6, 8, 10, 9, 6, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Canada', 'Masters', 'Asian or Asian American'),
('62a54f20d8c00e9f541c5cfa', '2022-06-11', '22:27', '00:02:37', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Supply Chain', 'Python', 2, 8, 6, 1, 8, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 36, 'United States', 'Masters', 'White or Caucasian'),
('62a552e1cf2555431732922d', '2022-06-11', '22:43', '00:02:25', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'R', 4, 4, 5, 5, 4, 6, 'Neither easy nor difficult', 'Other (Please Specify):All of the above', 'Female', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a557d10f8c8599d5b1a81c', '2022-06-11', '23:04', '00:01:35', 'Data Scientist', 'Yes', '106k-125k', 'Finance', 'Python', 9, 8, 10, 10, 10, 10, 'Difficult', 'Remote Work', 'Male', 29, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a55b05f8d5efcc22fa5b65', '2022-06-11', '23:18', '00:04:47', 'Other (Please Specify):Business Intelligence Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Professional Services', 'R', 8, 10, 10, 7, 8, 5, 'Difficult', 'Other (Please Specify):Data Maturity', 'Male', 30, 'United States', 'Masters', 'White or Caucasian'),
('62a55fe1f8d5efcc22fa5fe4', '2022-06-11', '23:39', '00:01:03', 'Data Engineer', 'No', '41k-65k', 'Finance', 'Python', 0, 6, 6, 6, 6, 6, 'Very Easy', 'Better Salary', 'Male', 24, 'United States', 'Bachelors', 'Black or African American'),
('62a56bc67dc029e2d66e86c0', '2022-06-12', '0:29', '00:01:37', 'Data Engineer', 'Yes', '225k+', 'Tech', 'Other:Sql', 3, 3, 4, 4, 3, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 33, 'United States', 'Bachelors', 'Asian or Asian American'),
('62a57116f408bae018efd56a', '2022-06-12', '0:52', '00:01:37', 'Data Analyst', 'No', '106k-125k', 'Other (Please Specify):Food and bece', 'Python', 10, 10, 10, 10, 10, 6, 'Easy', 'Better Salary', 'Female', 42, 'United States', 'Bachelors', 'White or Caucasian'),
('62a57263cec54911e9ccf648', '2022-06-12', '0:58', '00:01:54', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Python', 1, 10, 10, 8, 10, 3, 'Neither easy nor difficult', 'Better Salary', 'Female', 36, 'United States', 'Bachelors', 'White or Caucasian'),
('62a574b3b4da29969c658eb4', '2022-06-12', '1:08', '00:01:43', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Research (non-clincial)', 'Python', 2, 3, 7, 6, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'United States', 'Bachelors', 'White or Caucasian'),
('62a58b267dc029e2d66ea3f8', '2022-06-12', '2:43', '00:01:35', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 8, 7, 8, 7, 7, 9, 'Easy', 'Other (Please Specify):Opportunity to learn', 'Female', 21, 'India', 'Bachelors', 'Asian or Asian American'),
('62a58d20575fa3a5ae8b6969', '2022-06-12', '2:52', '00:01:31', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'Python', 8, 5, 8, 8, 5, 10, 'Difficult', 'Remote Work', 'Female', 34, 'Other (Please Specify):Israel', 'Masters', 'White or Caucasian'),
('62a58faf2e54c9003e55ef2e', '2022-06-12', '3:03', '00:01:20', 'Student/Looking/None', 'No', '0-40k', 'Education', 'Python', 2, 5, 5, 5, 2, 4, 'Difficult', 'Better Salary', 'Male', 27, 'Other (Please Specify):Netherlands', 'Bachelors', 'White or Caucasian'),
('62a5998fbc6861bf31798ef0', '2022-06-12', '3:45', '00:01:58', 'Other (Please Specify):BI consultant ', 'Yes', '0-40k', 'Tech', 'Python', 7, 8, 8, 8, 8, 7, 'Neither easy nor difficult', 'Good Culture', 'Male', 27, 'Other (Please Specify):France', 'Masters', 'White or Caucasian'),
('62a59cd2cec54911e9cd251a', '2022-06-12', '3:59', '00:03:34', 'Student/Looking/None', 'No', '0-40k', 'Education', 'R', 1, 1, 2, 1, 0, 3, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 30, 'Other (Please Specify):Kenya', 'Associates', 'Other (Please Specify):African '),
('62a59d007dc029e2d66eb8f9', '2022-06-12', '4:00', '00:01:29', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Gover', 'Other:SQL', 2, 0, 0, 0, 0, 2, 'Difficult', 'Better Salary', 'Female', 33, 'United States', 'Bachelors', 'White or Caucasian'),
('62a5a124cec54911e9cd29f5', '2022-06-12', '4:17', '00:01:57', 'Data Analyst', 'Yes', '86k-105k', 'Finance', 'Python', 3, 3, 4, 4, 4, 4, 'Difficult', 'Good Culture', 'Male', 47, 'India', 'Masters', 'American Indian or Alaska Native'),
('62a5a44b24a26260273af0fc', '2022-06-12', '4:31', '00:01:34', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Retail', 'Other:SQL', 4, 5, 4, 5, 4, 4, 'Difficult', 'Other (Please Specify):Better work & remote salary', 'Male', 27, 'United States', 'Masters', 'Asian or Asian American'),
('62a5a931cec54911e9cd3333', '2022-06-12', '4:52', '00:03:19', 'Data Analyst', 'No', '0-40k', 'Healthcare', 'Python', 6, 7, 8, 7, 6, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'India', 'Bachelors', 'Asian or Asian American'),
('62a5bea05d257a28a3106f7e', '2022-06-12', '6:23', '00:01:41', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 2, 3, 2, 5, 5, 6, 'Neither easy nor difficult', 'Remote Work', 'Female', 35, 'India', 'Masters', 'Asian or Asian American'),
('62a5c571575fa3a5ae8baaa1', '2022-06-12', '6:52', '00:01:11', 'Data Analyst', 'Yes', '86k-105k', 'Education', 'Python', 0, 1, 1, 0, 0, 0, 'Neither easy nor difficult', 'Good Culture', 'Male', 31, 'United States', 'Masters', 'Hispanic or Latino'),
('62a5cb12cf25554317330d69', '2022-06-12', '7:16', '00:03:44', 'Data Analyst', 'Yes', '0-40k', 'Education', 'Python', 2, 1, 2, 3, 4, 3, 'Difficult', 'Remote Work', 'Male', 25, 'Other (Please Specify):Zambia', 'Bachelors', 'Black or African American'),
('62a5cba2575fa3a5ae8bb122', '2022-06-12', '7:18', '00:02:11', 'Data Engineer', 'Yes', '66k-85k', 'Real Estate', 'Python', 3, 10, 8, 8, 10, 10, 'Easy', 'Remote Work', 'Male', 27, 'United States', 'Bachelors', 'White or Caucasian'),
('62a5d350f3072dd892652c70', '2022-06-12', '7:51', '00:01:57', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 5, 8, 3, 2, 4, 8, 'Neither easy nor difficult', 'Good Culture', 'Male', 32, 'Other (Please Specify):Netherlands', 'Bachelors', 'White or Caucasian'),
('62a5db29cf2555431733248f', '2022-06-12', '8:25', '00:02:42', 'Student/Looking/None', 'Yes', '0-40k', 'Real Estate', 'Python', 0, 3, 3, 3, 3, 6, 'Difficult', 'Good Work/Life Balance', 'Male', 47, 'Other (Please Specify):Portugal', 'Bachelors', 'White or Caucasian'),
('62a5e69f24a26260273b42bf', '2022-06-12', '9:14', '00:01:31', 'Other (Please Specify):DBA', 'No', '66k-85k', 'Finance', 'Python', 0, 10, 10, 5, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 30, 'United States', 'Masters', 'Asian or Asian American'),
('62a5ea667dc029e2d66f153d', '2022-06-12', '9:30', '00:01:52', 'Data Analyst', 'Yes', '106k-125k', 'Other (Please Specify):Defense', 'Python', 8, 6, 6, 7, 9, 10, 'Easy', 'Better Salary', 'Female', 35, 'United States', 'Masters', 'Black or African American'),
('62a5ebe05d257a28a310ac53', '2022-06-12', '9:36', '00:02:16', 'Data Analyst', 'Yes', '41k-65k', 'Finance', 'Python', 6, 9, 5, 7, 8, 9, 'Difficult', 'Remote Work', 'Male', 25, 'United States', 'High School', 'Hispanic or Latino'),
('62a5edb2575fa3a5ae8bdba5', '2022-06-12', '9:44', '00:03:02', 'Other (Please Specify):Data Steward', 'No', '66k-85k', 'Other (Please Specify):Foodservice', 'Python', 3, 6, 6, 6, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'United States', 'Bachelors', 'White or Caucasian'),
('62a5edba0a77c1a77f68f1b5', '2022-06-12', '9:44', '00:01:20', 'Data Analyst', 'Yes', '41k-65k', 'Healthcare', 'R', 1, 5, 3, 3, 6, 5, 'Difficult', 'Remote Work', 'Female', 27, 'United States', 'Masters', 'Black or African American'),
('62a5f332bc6861bf3179f631', '2022-06-12', '10:07', '00:01:52', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Data insights company', 'Python', 1, 8, 8, 1, 3, 7, 'Very Easy', 'Better Salary', 'Female', 23, 'India', 'Masters', 'Asian or Asian American'),
('62a5f872bae91e4b8b861e53', '2022-06-12', '10:30', '00:02:10', 'Data Scientist', 'No', '41k-65k', 'Other (Please Specify):Manuf', 'Python', 9, 10, 10, 10, 10, 10, 'Neither easy nor difficult', 'Good Culture', 'Male', 18, 'United States', 'Bachelors', 'White or Caucasian'),
('62a609b8f8f75616458875b7', '2022-06-12', '11:43', '00:01:42', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 8, 10, 9, 6, 8, 9, 'Easy', 'Remote Work', 'Female', 28, 'Other (Please Specify):Costa Rica ', 'Masters', 'Hispanic or Latino'),
('62a609c4bc6861bf317a10a3', '2022-06-12', '11:44', '00:01:20', 'Other (Please Specify):Analytics Manager', 'Yes', '125k-150k', 'Healthcare', 'Python', 7, 6, 8, 8, 8, 7, 'Easy', 'Remote Work', 'Male', 28, 'United States', 'Bachelors', 'White or Caucasian'),
('62a61076f8f7561645887ded', '2022-06-12', '12:12', '00:01:35', 'Student/Looking/None', 'No', '0-40k', 'Other (Please Specify):Not currently working', 'Python', 0, 0, 0, 0, 0, 0, 'Easy', 'Good Work/Life Balance', 'Female', 26, 'United States', 'Bachelors', 'American Indian or Alaska Native'),
('62a615fd18134ddc75d1f1fa', '2022-06-12', '12:36', '00:01:57', 'Student/Looking/None', 'No', '0-40k', 'Education', 'Python', 0, 0, 3, 0, 0, 8, 'Difficult', 'Better Salary', 'Male', 27, 'Other (Please Specify):ghana', 'Bachelors', 'Black or African American'),
('62a617c30a77c1a77f6925fc', '2022-06-12', '12:43', '00:02:48', 'Data Analyst', 'No', '41k-65k', 'Tech', 'Python', 9, 7, 9, 10, 10, 10, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 22, 'India', 'Masters', 'Asian or Asian American'),
('62a618a9d8c00e9f541d3537', '2022-06-12', '12:47', '00:01:56', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'R', 0, 8, 7, 6, 3, 9, 'Very Difficult', 'Better Salary', 'Male', 27, 'United States', 'High School', 'White or Caucasian'),
('62a61eb02e54c9003e5697f7', '2022-06-12', '13:13', '00:01:43', 'Data Engineer', 'Yes', '0-40k', 'Other (Please Specify):Food and Beverages', 'Python', 5, 7, 6, 8, 7, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 28, 'India', 'Bachelors', 'Asian or Asian American'),
('62a6246df3072dd892659218', '2022-06-12', '13:37', '00:01:46', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 3, 2, 4, 3, 3, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Nigeria', 'High School', 'Black or African American'),
('62a62a7124a26260273b94fa', '2022-06-12', '14:03', '00:01:52', 'Data Analyst', 'No', '0-40k', 'Healthcare', 'Python', 2, 6, 6, 7, 7, 9, 'Difficult', 'Better Salary', 'Male', 32, 'United Kingdom', 'Bachelors', 'Hispanic or Latino'),
('62a631782e54c9003e56ac36', '2022-06-12', '14:33', '00:10:34', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Other:SQL', 7, 9, 10, 10, 3, 4, 'Easy', 'Remote Work', 'Male', 33, 'Other (Please Specify):Uruguay', 'Bachelors', 'White or Caucasian'),
('62a633b4d8c00e9f541d54a4', '2022-06-12', '14:43', '00:02:53', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Government Administration', 'Python', 5, 6, 5, 2, 3, 3, 'Easy', 'Remote Work', 'Male', 23, 'Canada', 'Masters', 'Black or African American'),
('62a639e05d257a28a3110ef5', '2022-06-12', '15:09', '00:01:49', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'R', 4, 5, 4, 4, 5, 6, 'Neither easy nor difficult', 'Remote Work', 'Female', 40, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a642690f8c8599d5b2ab37', '2022-06-12', '15:45', '00:02:39', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Outsourcing ', 'Python', 7, 9, 9, 9, 7, 9, 'Easy', 'Better Salary', 'Female', 28, 'United Kingdom', 'Bachelors', 'Asian or Asian American'),
('62a64b4dd8c00e9f541d6d81', '2022-06-12', '16:23', '00:03:50', 'Data Analyst', 'No', '0-40k', 'Real Estate', 'R', 3, 7, 8, 6, 6, 9, 'Difficult', 'Remote Work', 'Male', 26, 'Other (Please Specify):Nigeria', 'High School', 'Black or African American'),
('62a64c6ecf2555431733a7a4', '2022-06-12', '16:28', '00:03:59', 'Other (Please Specify):Technical consulta', 'Yes', '0-40k', 'Tech', 'Python', 3, 5, 5, 4, 3, 2, 'Difficult', 'Better Salary', 'Female', 24, 'India', 'Bachelors', 'Asian or Asian American'),
('62a654165d257a28a3112ac9', '2022-06-12', '17:01', '00:02:04', 'Other (Please Specify):Software Engineer, AI ', 'Yes', '86k-105k', 'Finance', 'Python', 7, 5, 5, 8, 8, 8, 'Neither easy nor difficult', 'Remote Work', 'Female', 40, 'United States', 'Associates', 'Other (Please Specify):Bi-racial people should be able to check 2 options in 2022. '),
('62a65618d8c00e9f541d783a', '2022-06-12', '17:09', '00:01:46', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Consulting', 'Python', 8, 10, 10, 10, 7, 9, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'United States', 'Bachelors', 'Black or African American'),
('62a65db824a26260273bc9ff', '2022-06-12', '17:42', '00:02:29', 'Data Scientist', 'Yes', '41k-65k', 'Other (Please Specify):Cobsukting', 'Python', 8, 8, 10, 10, 10, 10, 'Easy', 'Good Culture', 'Female', 44, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a66558cf2555431733c0f9', '2022-06-12', '18:14', '00:01:58', 'Other (Please Specify):Systems configuration ', 'Yes', '66k-85k', 'Other (Please Specify):Insurance ', 'Python', 7, 9, 8, 8, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 36, 'United States', 'Masters', 'White or Caucasian'),
('62a6772c18134ddc75d25895', '2022-06-12', '19:30', '00:01:37', 'Other (Please Specify):Business Analyst ', 'Yes', '0-40k', 'Other (Please Specify):Workforce ', 'Python', 1, 5, 10, 10, 8, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62a68f1e0a77c1a77f69a381', '2022-06-12', '21:13', '00:04:36', 'Other (Please Specify):Sales & marketing', 'Yes', '0-40k', 'Other (Please Specify):General contractor', 'Python', 3, 3, 3, 2, 2, 2, 'Very Easy', 'Good Work/Life Balance', 'Male', 48, 'Other (Please Specify):Indonesia', 'Masters', 'Other (Please Specify):Melayu'),
('62a6a11a0a77c1a77f69b7cb', '2022-06-12', '22:29', '00:03:16', 'Data Analyst', 'Yes', '41k-65k', 'Construction', 'Other:Php', 1, 4, 1, 2, 2, 3, 'Easy', 'Better Salary', 'Female', 30, 'Canada', 'Masters', 'Asian or Asian American'),
('62a6ac1524a26260273c1cd0', '2022-06-12', '23:16', '00:04:53', 'Other (Please Specify):RF Engineer', 'No', '0-40k', 'Telecommunication', 'Python', 3, 8, 8, 5, 3, 5, 'Difficult', 'Better Salary', 'Male', 28, 'India', 'Bachelors', 'Other (Please Specify):Dravidian'),
('62a6b0790a77c1a77f69cb15', '2022-06-12', '23:35', '00:01:58', 'Other (Please Specify):Support Engineer', 'No', '0-40k', 'Tech', 'Python', 5, 8, 7, 7, 3, 2, 'Difficult', 'Better Salary', 'Male', 25, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62a6bc6a18134ddc75d2a726', '2022-06-13', '0:26', '00:01:30', 'Other (Please Specify):Analytics Engineer', 'No', '106k-125k', 'Tech', 'Other:SQL', 6, 5, 4, 4, 3, 4, 'Easy', 'Better Salary', 'Male', 24, 'United States', 'Masters', 'American Indian or Alaska Native'),
('62a6c3d9cec54911e9ce7669', '2022-06-13', '0:58', '00:02:51', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Nonprofit', 'Python', 5, 10, 7, 7, 4, 8, 'Easy', 'Better Salary', 'Male', 31, 'United States', 'Bachelors', 'Black or African American'),
('62a6d037cec54911e9ce862a', '2022-06-13', '1:50', '00:01:47', 'Data Engineer', 'No', '0-40k', 'Real Estate', 'Python', 3, 3, 8, 9, 5, 3, 'Easy', 'Better Salary', 'Male', 23, 'United Kingdom', 'Bachelors', 'Other (Please Specify):arab'),
('62a6d2532e54c9003e575d9c', '2022-06-13', '1:59', '00:03:06', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Police / Emergency Services', 'Other:DAX', 1, 4, 4, 1, 1, 4, 'Easy', 'Good Culture', 'Female', 48, 'United Kingdom', 'Masters', 'White or Caucasian'),
('62a6dbcad8c00e9f541e1050', '2022-06-13', '2:40', '00:01:00', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Python', 6, 9, 8, 8, 8, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'United States', 'Bachelors', 'Black or African American'),
('62a6e2815d257a28a311c8f9', '2022-06-13', '3:08', '00:02:04', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Retail', 'Python', 5, 7, 7, 7, 7, 7, 'Difficult', 'Better Salary', 'Male', 32, 'United Kingdom', 'Masters', 'Hispanic or Latino'),
('62a6ea03d8c00e9f541e3594', '2022-06-13', '3:40', '00:04:45', 'Data Scientist', 'Yes', '41k-65k', 'Finance', 'Python', 5, 7, 7, 4, 5, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):Hong Kong', 'Bachelors', 'Asian or Asian American'),
('62a7029ff8f7561645899bae', '2022-06-13', '5:25', '00:03:29', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Insurance', 'Python', 5, 5, 7, 7, 7, 8, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 32, 'Other (Please Specify):TUNISIA', 'Masters', 'White or Caucasian'),
('62a7047c24a26260273c9646', '2022-06-13', '5:33', '00:01:50', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 0, 3, 0, 1, 0, 0, 'Easy', 'Good Culture', 'Female', 30, 'Other (Please Specify):Sri lanka', 'Masters', 'Other (Please Specify):Asian'),
('62a70b55cec54911e9cedd98', '2022-06-13', '6:03', '00:02:49', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Manufacturing', 'Python', 4, 2, 5, 2, 4, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 35, 'Other (Please Specify):Spain', 'Masters', 'White or Caucasian'),
('62a71930bae91e4b8b878b2b', '2022-06-13', '7:02', '00:03:13', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'R', NULL, NULL, NULL, NULL, NULL, 10, 'Easy', 'Remote Work', 'Female', 38, 'United Kingdom', 'Masters', 'Black or African American'),
('62a73a37f8d5efcc22fcb724', '2022-06-13', '9:23', '00:01:09', 'Other (Please Specify):Account manager', 'Yes', '66k-85k', 'Other (Please Specify):Consumer retail', 'Python', 6, 6, 7, 7, 6, 7, 'Easy', 'Good Culture', 'Female', 30, 'United States', 'Masters', 'Asian or Asian American'),
('62a73aa824a26260273d0172', '2022-06-13', '9:24', '00:01:26', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 3, 5, 4, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 48, 'United States', 'Bachelors', 'White or Caucasian'),
('62a73c5b0a77c1a77f6aba65', '2022-06-13', '9:32', '00:01:26', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Other:SAS SQL', 5, 8, 5, 5, 5, 4, 'Easy', 'Remote Work', 'Male', 32, 'Canada', 'Masters', 'Asian or Asian American'),
('62a749ebd8c00e9f541efa36', '2022-06-13', '10:30', '00:01:12', 'Other (Please Specify):Incident Manager', 'Yes', '41k-65k', 'Telecommunication', 'Python', 4, 5, 4, 5, 5, 6, 'Difficult', 'Good Work/Life Balance', 'Male', 27, 'India', 'Bachelors', 'American Indian or Alaska Native'),
('62a74e28b4da29969c681108', '2022-06-13', '10:48', '00:01:34', 'Other (Please Specify):Product owner', 'No', '41k-65k', 'Tech', 'Python', 7, 9, 5, 6, 6, 7, 'Easy', 'Other (Please Specify):The work', 'Male', 27, 'United Kingdom', 'Masters', 'White or Caucasian'),
('62a758185d257a28a312bc94', '2022-06-13', '11:30', '00:02:45', 'Student/Looking/None', 'No', '0-40k', 'Finance', 'Python', 8, 7, 6, 7, 8, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 24, 'Other (Please Specify):Kenua', 'Bachelors', 'Other (Please Specify):African'),
('62a75a5418134ddc75d3d2f1', '2022-06-13', '11:40', '00:00:43', 'Data Scientist', 'Yes', '150k-225k', 'Finance', 'R', 9, 9, 9, 9, 8, 8, 'Difficult', 'Better Salary', 'Male', 42, 'United States', 'PhD', 'Asian or Asian American'),
('62a75ed0f8f75616458a5d1a', '2022-06-13', '11:59', '00:02:58', 'Other (Please Specify):Business Analyst', 'No', '41k-65k', 'Tech', 'Python', 8, 6, 6, 8, 7, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a75f1b575fa3a5ae8e0010', '2022-06-13', '12:00', '00:01:08', 'Database Developer', 'Yes', '0-40k', 'Tech', 'Python', 5, 9, 7, 7, 6, 9, 'Easy', 'Better Salary', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a764ffd8c00e9f541f3cc3', '2022-06-13', '12:25', '00:01:21', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 7, 9, 8, 8, 4, 2, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'India', 'Bachelors', 'Asian or Asian American'),
('62a76c962e54c9003e588661', '2022-06-13', '12:57', '00:02:01', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Home and living', 'Other:SQL', 5, 6, 6, 2, 2, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 32, 'Other (Please Specify):Germany', 'Bachelors', 'Black or African American'),
('62a772da575fa3a5ae8e2a4a', '2022-06-13', '13:24', '00:02:52', 'Other (Please Specify):Presales Engineer ', 'No', '0-40k', 'Telecommunication', 'Python', 4, 3, 2, 0, 0, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 35, 'Other (Please Specify):Argentina ', 'Bachelors', 'White or Caucasian'),
('62a7738a2e54c9003e589598', '2022-06-13', '13:27', '00:01:18', 'Data Analyst', 'Yes', '106k-125k', 'Healthcare', 'Python', 4, 3, 4, 2, 2, 2, 'Easy', 'Good Work/Life Balance', 'Male', 41, 'United States', 'High School', 'White or Caucasian'),
('62a77967f8d5efcc22fd4c81', '2022-06-13', '13:52', '00:00:59', 'Other (Please Specify):Predictive Analyst', 'No', '41k-65k', 'Education', 'Python', 4, 9, 8, 8, 6, 7, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'United States', 'Masters', 'White or Caucasian'),
('62a77a37f8d5efcc22fd4e47', '2022-06-13', '13:56', '00:01:04', 'Data Analyst', 'Yes', '0-40k', 'Construction', 'Python', 0, 0, 0, 0, 0, 0, 'Very Difficult', 'Better Salary', 'Female', 28, 'United States', 'Masters', 'Asian or Asian American'),
('62a77cb7b4da29969c68743a', '2022-06-13', '14:06', '00:00:50', 'Data Analyst', 'Yes', '41k-65k', 'Agriculture', 'Python', 3, 6, 5, 5, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'United States', 'Bachelors', 'White or Caucasian'),
('62a78743f8f75616458ab6bb', '2022-06-13', '14:51', '00:01:30', 'Student/Looking/None', 'No', '0-40k', 'Telecommunication', 'Python', 8, 10, 6, 7, 8, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 19, 'United States', 'High School', 'White or Caucasian'),
('62a789015d257a28a3132977', '2022-06-13', '14:59', '00:01:25', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Insurance ', 'Python', 5, 6, 9, 6, 7, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'India', 'Bachelors', 'Asian or Asian American'),
('62a78f3bf408bae018f2ef51', '2022-06-13', '15:25', '00:01:33', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Python', 8, 9, 9, 7, 8, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify)', 'Bachelors', 'White or Caucasian'),
('62a7988bbae91e4b8b88b8ee', '2022-06-13', '16:05', '00:01:46', 'Data Analyst', 'Yes', '41k-65k', 'Other (Please Specify):Non Profit Organization', 'Python', 6, 10, 10, 10, 10, 8, 'Difficult', 'Better Salary', 'Female', 26, 'Canada', 'Masters', 'Asian or Asian American'),
('62a79c9c2e54c9003e58f0d5', '2022-06-13', '16:22', '00:02:42', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Python', 3, 4, 5, 5, 4, 5, 'Difficult', 'Good Work/Life Balance', 'Male', 25, 'Other (Please Specify):Spain', 'Bachelors', 'White or Caucasian'),
('62a7b0ae0f8c8599d5b51cd0', '2022-06-13', '17:48', '00:00:50', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Manufacturing', 'Python', 6, 6, 9, 9, 10, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 25, 'Other (Please Specify):Portugal', 'Bachelors', 'White or Caucasian'),
('62a7b283f8d5efcc22fdc189', '2022-06-13', '17:56', '00:01:57', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'R', 2, 3, 4, 3, 3, 5, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 26, 'Other (Please Specify):Liberia', 'Bachelors', 'Black or African American'),
('62a7b296f8d5efcc22fdc1ef', '2022-06-13', '17:56', '00:01:07', 'Data Analyst', 'Yes', '125k-150k', 'Education', 'Python', 8, 8, 7, 6, 7, 9, 'Neither easy nor difficult', 'Good Culture', 'Male', 35, 'United States', 'Bachelors', 'White or Caucasian'),
('62a7bd0e5d257a28a313855c', '2022-06-13', '18:41', '00:01:23', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Retail', 'Python', 6, 7, 7, 6, 7, 6, 'Difficult', 'Remote Work', 'Male', 29, 'United States', 'Masters', 'Black or African American'),
('62a7be5e5d257a28a313876a', '2022-06-13', '18:46', '00:01:45', 'Data Analyst', 'Yes', '86k-105k', 'Tech', 'Python', 7, 6, 5, 4, 3, 6, 'Neither easy nor difficult', 'Better Salary', 'Female', 41, 'United States', 'Associates', 'Hispanic or Latino'),
('62a7ce44575fa3a5ae8ece5f', '2022-06-13', '19:54', '00:01:15', 'Student/Looking/None', 'No', '0-40k', 'Education', 'Python', 0, 6, 4, 5, 2, 4, 'Very Difficult', 'Remote Work', 'Female', 22, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a7e1380f8c8599d5b55fcf', '2022-06-13', '21:15', '00:02:30', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Other:None', 2, 6, 6, 4, 3, 3, 'Difficult', 'Better Salary', 'Male', 35, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a7e2d024a26260273e4448', '2022-06-13', '21:22', '00:02:04', 'Data Analyst', 'Yes', '66k-85k', 'Finance', 'Python', 4, 3, 4, 4, 4, 6, 'Very Difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):SG', 'Bachelors', 'Asian or Asian American'),
('62a7ed9c0f8c8599d5b57132', '2022-06-13', '22:08', '00:01:13', 'Data Engineer', 'No', '150k-225k', 'Real Estate', 'Python', 4, 6, 3, 2, 3, 3, 'Neither easy nor difficult', 'Good Culture', 'Male', 37, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a7f09a0f8c8599d5b57526', '2022-06-13', '22:21', '00:03:15', 'Data Analyst', 'Yes', '66k-85k', 'Other (Please Specify):Air transpo', 'Python', 6, 7, 7, 5, 5, 9, 'Difficult', 'Better Salary', 'Female', 28, 'United States', 'Masters', 'Black or African American'),
('62a7fb02f8d5efcc22fe2486', '2022-06-13', '23:05', '00:00:58', 'Data Analyst', 'No', '86k-105k', 'Real Estate', 'Python', 7, 5, 6, 6, 4, 6, 'Neither easy nor difficult', 'Good Culture', 'Male', 23, 'United States', 'High School', 'White or Caucasian'),
('62a816907dc029e2d6725a33', '2022-06-14', '1:03', '00:01:54', 'Student/Looking/None', 'No', '0-40k', 'Finance', 'Python', 3, 4, 8, 5, 5, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'United States', 'High School', 'Asian or Asian American'),
('62a84764bc6861bf317d7b86', '2022-06-14', '4:31', '00:01:22', 'Data Analyst', 'No', '66k-85k', 'Other (Please Specify):Distribution ', 'Python', 2, 4, 4, 3, 4, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 25, 'Other (Please Specify):Australia', 'Bachelors', 'Native Hawaiian or other Pacific Islander'),
('62a84f9af408bae018f41e34', '2022-06-14', '5:06', '00:01:27', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 0, 1, 2, 1, 1, 1, 'Neither easy nor difficult', 'Remote Work', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a85803f8d5efcc22fea92f', '2022-06-14', '5:42', '00:02:53', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):None for now', 'Other:None at the moment', 0, 1, 0, 0, 0, 0, 'Neither easy nor difficult', 'Good Culture', 'Male', 53, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a8592f7dc029e2d672c0a8', '2022-06-14', '5:47', '00:01:37', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 4, 6, 6, 3, 7, 9, 'Neither easy nor difficult', 'Better Salary', 'Female', 33, 'Other (Please Specify):Romania', 'Bachelors', 'White or Caucasian'),
('62a8643bcec54911e9d14297', '2022-06-14', '6:34', '00:04:29', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'R', 3, 5, 5, 4, 5, 6, 'Difficult', 'Better Salary', 'Male', 39, 'Other (Please Specify)', 'High School', 'Black or African American'),
('62a8665c5d257a28a31474f7', '2022-06-14', '6:43', '00:01:05', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'Other:excel', 6, 7, 5, 7, 7, 9, 'Difficult', 'Better Salary', 'Female', 22, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62a868c5cf2555431737094b', '2022-06-14', '6:53', '00:01:34', 'Data Analyst', 'No', '41k-65k', 'Finance', 'Python', 4, 7, 7, 7, 5, 5, 'Easy', 'Better Salary', 'Male', 24, 'Other (Please Specify):Germany', 'Bachelors', 'White or Caucasian'),
('62a88e9ff8d5efcc22ff1eb6', '2022-06-14', '9:35', '00:01:36', 'Data Architect', 'No', '86k-105k', 'Other (Please Specify):Energy', 'Python', 5, 1, 3, 1, 4, 5, 'Difficult', 'Good Work/Life Balance', 'Male', 31, 'Canada', 'High School', 'White or Caucasian'),
('62a89e365d257a28a314fd36', '2022-06-14', '10:41', '00:00:53', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Retails', 'Python', 0, 0, 0, 0, 0, 0, 'Very Difficult', 'Better Salary', 'Male', 25, 'Other (Please Specify):Aisa', 'Bachelors', 'Asian or Asian American'),
('62a8b6ffbae91e4b8b8aa5c2', '2022-06-14', '12:27', '00:02:07', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'R', 4, 7, 7, 6, 6, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 25, 'India', 'Bachelors', 'Asian or Asian American'),
('62a8bf9e575fa3a5ae907617', '2022-06-14', '13:04', '00:02:07', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 4, 4, 4, 2, 0, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a8cd29bc6861bf317ea9a2', '2022-06-14', '14:02', '00:01:56', 'Other (Please Specify):Ads operations', 'Yes', '41k-65k', 'Other (Please Specify):Digital Marketing ', 'Other:Sql', 6, 7, 7, 7, 7, 6, 'Neither easy nor difficult', 'Other (Please Specify):Remote too', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62a8f477f408bae018f5869d', '2022-06-14', '16:49', '00:01:35', 'Data Analyst', 'No', '86k-105k', 'Healthcare', 'Python', 8, 9, 8, 8, 8, 9, 'Difficult', 'Better Salary', 'Male', 40, 'United States', 'High School', 'White or Caucasian'),
('62a8fcf5cf25554317384604', '2022-06-14', '17:26', '00:02:02', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Homelessness', 'C/C++', 5, 6, 6, 2, 0, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a8fe9abc6861bf317f0c01', '2022-06-14', '17:33', '00:03:16', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 1, 7, 5, 5, 4, 4, 'Difficult', 'Better Salary', 'Male', 28, 'India', 'Bachelors', 'Other (Please Specify):South Indian '),
('62a9024d18134ddc75d6e76d', '2022-06-14', '17:49', '00:01:44', 'Data Analyst', 'Yes', '0-40k', 'Healthcare', 'R', 3, 6, 6, 4, 6, 3, 'Very Easy', 'Better Salary', 'Female', 28, 'United Kingdom', 'Masters', 'Black or African American'),
('62a95253bae91e4b8b8b91d9', '2022-06-14', '23:30', '00:01:02', 'Student/Looking/None', 'Yes', '0-40k', 'Telecommunication', 'Python', 0, 3, 3, 4, 5, 5, 'Difficult', 'Good Work/Life Balance', 'Female', 26, 'India', 'Masters', 'Asian or Asian American'),
('62a960567dc029e2d6749dd8', '2022-06-15', '0:30', '00:02:43', 'Data Engineer', 'No', '41k-65k', 'Construction', 'Python', 6, 8, 8, 5, 5, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):Netherlands', 'Masters', 'White or Caucasian'),
('62a9612bf8d5efcc22007c09', '2022-06-15', '0:33', '00:01:26', 'Data Analyst', 'Yes', '66k-85k', 'Education', 'Other:SQL', 5, 9, 7, 9, 8, 9, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'Other (Please Specify):Australia', 'Bachelors', 'Asian or Asian American'),
('62a962380f8c8599d5b7e3fb', '2022-06-15', '0:38', '00:01:24', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Retail ', 'Other:None', 2, 0, 5, 3, 0, 3, 'Very Difficult', 'Remote Work', 'Male', 28, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62a993537dc029e2d674e9b5', '2022-06-15', '4:07', '00:02:08', 'Data Analyst', 'No', '66k-85k', 'Education', 'Python', 3, 3, 5, 3, 3, 4, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 38, 'Other (Please Specify):Nigeria', 'Masters', 'Black or African American'),
('62a9bb81bc6861bf3180079c', '2022-06-15', '6:59', '00:01:56', 'Data Analyst', 'No', '0-40k', 'Finance', 'Python', 2, 6, 5, 5, 6, 6, 'Easy', 'Good Culture', 'Male', 22, 'Other (Please Specify):Mexico', 'Bachelors', 'White or Caucasian'),
('62a9c880f408bae018f6aa1b', '2022-06-15', '7:54', '00:01:32', 'Data Analyst', 'Yes', '86k-105k', 'Other (Please Specify):Energy', 'Python', 7, 8, 9, 9, 9, 9, 'Difficult', 'Better Salary', 'Male', 34, 'United States', 'Bachelors', 'Hispanic or Latino'),
('62a9e206f3072dd8926bce70', '2022-06-15', '9:43', '00:02:07', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 3, 8, 8, 5, 7, 9, 'Easy', 'Better Salary', 'Male', 26, 'Other (Please Specify):Indonesia', 'Bachelors', 'Asian or Asian American'),
('62a9f0172e54c9003e5cdc25', '2022-06-15', '10:43', '00:01:06', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'Python', 5, 9, 7, 7, 8, 9, 'Neither easy nor difficult', 'Better Salary', 'Female', 26, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62a9f8a4cf2555431739d694', '2022-06-15', '11:20', '00:01:23', 'Data Engineer', 'No', '66k-85k', 'Education', 'Python', 10, 10, 10, 9, 9, 10, 'Difficult', 'Remote Work', 'Male', 25, 'Other (Please Specify):Greece', 'Bachelors', 'Other (Please Specify):Greek'),
('62aa121dcec54911e9d446cc', '2022-06-15', '13:08', '00:03:23', 'Data Scientist', 'Yes', '125k-150k', 'Tech', 'Python', 5, 3, 7, 4, 5, 3, 'Easy', 'Other (Please Specify):Collaboration ', 'Male', 34, 'United States', 'Bachelors', 'Black or African American'),
('62aa1734f3072dd8926c4168', '2022-06-15', '13:30', '00:03:51', 'Other (Please Specify):Power Bi Developer', 'Yes', '41k-65k', 'Finance', 'Other:DAX', 7, 10, 10, 10, 4, 5, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Female', 32, 'Other (Please Specify):Poland', 'Bachelors', 'Hispanic or Latino'),
('62aa21e218134ddc75d8be11', '2022-06-15', '14:16', '00:01:15', 'Student/Looking/None', 'No', '0-40k', 'Construction', 'R', 2, 2, 2, 2, 2, 2, 'Difficult', 'Better Salary', 'Male', 24, 'United States', 'Associates', 'Black or African American'),
('62aa29852e54c9003e5d50b5', '2022-06-15', '14:48', '00:06:20', 'Data Engineer', 'Yes', '0-40k', 'Tech', 'Python', 7, 3, 3, 2, 5, 9, 'Difficult', 'Better Salary', 'Male', 26, 'Other (Please Specify):Argentine', 'Bachelors', 'Hispanic or Latino'),
('62aa2f44bc6861bf3180fd06', '2022-06-15', '15:13', '00:02:00', 'Data Analyst', 'Yes', '41k-65k', 'Telecommunication', 'Other:Sql', 4, 7, 5, 6, 4, 6, 'Difficult', 'Better Salary', 'Female', 32, 'Other (Please Specify):Sweden', 'Masters', 'Black or African American'),
('62aa3454bae91e4b8b8d3249', '2022-06-15', '15:34', '00:02:24', 'Data Scientist', 'No', '41k-65k', 'Tech', 'R', 5, 1, 7, 1, 1, 2, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 40, 'Other (Please Specify):Portugal', 'Masters', 'White or Caucasian'),
('62aa34e8f3072dd8926c7d56', '2022-06-15', '15:37', '00:01:49', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Direct Marketing', 'Python', 0, 7, 1, 6, 0, 0, 'Easy', 'Better Salary', 'Male', 27, 'United States', 'Bachelors', 'Black or African American'),
('62aa356ff8d5efcc22020832', '2022-06-15', '15:39', '00:01:03', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'R', 4, 3, 6, 7, 4, 7, 'Easy', 'Better Salary', 'Male', 28, 'United States', 'Masters', 'Black or African American'),
('62aa3e6824a26260274264da', '2022-06-15', '16:17', '00:02:13', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):FMCG', 'Python', 1, 9, 5, 5, 1, 1, 'Difficult', 'Better Salary', 'Male', 30, 'Other (Please Specify):Nigeria', 'Bachelors', 'Other (Please Specify):Nigeria'),
('62aa4790f8d5efcc2202266e', '2022-06-15', '16:56', '00:01:10', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Taking bootcamp', 'Python', 0, 6, 5, 5, 5, 6, 'Difficult', 'Remote Work', 'Male', 37, 'United States', 'Bachelors', 'White or Caucasian'),
('62aa5761bc6861bf318141fc', '2022-06-15', '18:04', '00:02:35', 'Other (Please Specify):Software support', 'No', '41k-65k', 'Tech', 'JavaScript', 7, 7, 5, 5, 0, 0, 'Difficult', 'Good Culture', 'Male', 32, 'Other (Please Specify):Australia', 'Bachelors', 'Asian or Asian American'),
('62aa5c11f408bae018f7dec0', '2022-06-15', '18:24', '00:02:20', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 9, 7, 10, 10, 5, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'Other (Please Specify):Saudi Arabia ', 'Bachelors', 'Other (Please Specify):Arab'),
('62aa956ef8d5efcc22028e3d', '2022-06-15', '22:29', '00:02:50', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 6, 7, 7, 7, 5, 6, 'Neither easy nor difficult', 'Better Salary', 'Male', 39, 'Other (Please Specify):Argentina', 'Associates', 'White or Caucasian'),
('62aa95970a77c1a77f709268', '2022-06-15', '22:29', '00:06:15', 'Data Analyst', 'Yes', '125k-150k', 'Finance', 'Python', 6, 8, 7, 4, 4, 2, 'Easy', 'Other (Please Specify):Better Tech Stack', 'Male', 34, 'Other (Please Specify):Australia', 'Bachelors', 'Asian or Asian American'),
('62aa98bfcf255543173adbdc', '2022-06-15', '22:43', '00:01:38', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Space & Defense', 'Python', 5, 6, 10, 7, 3, 3, 'Neither easy nor difficult', 'Remote Work', 'Male', 27, 'United States', 'Bachelors', 'Black or African American'),
('62aaa387f8d5efcc22029fcb', '2022-06-15', '23:29', '00:01:17', 'Data Analyst', 'Yes', '66k-85k', 'Healthcare', 'Other:SQL ', 7, 7, 4, 7, 7, 7, 'Difficult', 'Better Salary', 'Male', 54, 'United States', 'High School', 'White or Caucasian'),
('62aaa86bbae91e4b8b8dc832', '2022-06-15', '23:50', '00:01:50', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 0, NULL, NULL, NULL, NULL, NULL, 'Difficult', 'Remote Work', 'Female', 20, 'India', 'Bachelors', 'Asian or Asian American'),
('62aacd922e54c9003e5e33c2', '2022-06-16', '2:28', '00:01:22', 'Student/Looking/None', 'Yes', '0-40k', 'Finance', 'Other:SQL', 3, 3, 3, 3, 3, 3, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 25, 'India', 'Masters', 'Asian or Asian American'),
('62aaeecd0f8c8599d5ba6923', '2022-06-16', '4:50', '00:01:42', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'Python', 7, 7, 2, 2, 7, 9, 'Easy', 'Good Work/Life Balance', 'Male', 33, 'India', 'Bachelors', 'Asian or Asian American'),
('62aaf8397dc029e2d6773cde', '2022-06-16', '5:30', '00:01:17', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 4, 8, 8, 8, 10, 10, 'Very Easy', 'Remote Work', 'Male', 30, 'United Kingdom', 'Masters', 'White or Caucasian'),
('62aaff342e54c9003e5e79b8', '2022-06-16', '6:00', '00:12:16', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 0, 4, 2, 0, 1, 3, 'Neither easy nor difficult', 'Better Salary', 'Male', 31, 'Other (Please Specify):Niger', 'High School', 'Black or African American'),
('62ab0bdc575fa3a5ae9413e5', '2022-06-16', '6:54', '00:02:11', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Automobile (cars)', 'Python', 5, 6, 5, 6, 2, 1, 'Difficult', 'Remote Work', 'Male', 22, 'Other (Please Specify):France', 'Masters', 'Other (Please Specify):Arabian (from Maghreb)'),
('62ab1cb0cec54911e9d5d187', '2022-06-16', '8:06', '00:01:29', 'Data Analyst', 'Yes', '66k-85k', 'Tech', 'R', 8, 10, 10, 10, 8, 9, 'Neither easy nor difficult', 'Remote Work', 'Female', 38, 'United States', 'Bachelors', 'Black or African American'),
('62ab3e62bae91e4b8b8ebe14', '2022-06-16', '10:29', '00:02:41', 'Data Analyst', 'No', '0-40k', 'Other (Please Specify):Logistics', 'Python', 6, 9, 7, 7, 5, 8, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 22, 'Other (Please Specify):Malaysia', 'Bachelors', 'Other (Please Specify):Malay'),
('62ab6ab318134ddc75dabb09', '2022-06-16', '13:38', '00:01:20', 'Data Scientist', 'Yes', '0-40k', 'Real Estate', 'Python', 2, 3, 4, 5, 3, 6, 'Very Easy', 'Better Salary', 'Male', 33, 'India', 'Bachelors', 'Asian or Asian American'),
('62ab83a7d8c00e9f54263d2e', '2022-06-16', '15:25', '00:01:11', 'Data Analyst', 'Yes', '41k-65k', 'Tech', 'Python', 3, 6, 6, 6, 5, 5, 'Neither easy nor difficult', 'Better Salary', 'Male', 27, 'Canada', 'Bachelors', 'White or Caucasian'),
('62ab8bf65d257a28a319e9cb', '2022-06-16', '16:00', '00:02:14', 'Data Analyst', 'No', '0-40k', 'Tech', 'R', 0, 6, 3, 0, 0, 10, 'Neither easy nor difficult', 'Remote Work', 'Male', 19, 'Other (Please Specify):Algeria', 'Bachelors', 'White or Caucasian'),
('62abec6cf3072dd8926f2ad0', '2022-06-16', '22:52', '00:01:24', 'Other (Please Specify):Investigation specialist', 'No', '0-40k', 'Other (Please Specify):Ecommerce', 'Python', 1, 6, 2, 5, 1, 0, 'Neither easy nor difficult', 'Better Salary', 'Male', 24, 'India', 'Bachelors', 'Other (Please Specify):Indian'),
('62abee280f8c8599d5bc246d', '2022-06-16', '22:59', '00:03:50', 'Other (Please Specify):Director', 'No', '150k-225k', 'Finance', 'Other:I do analysis and create presentations based on datasets provided by others', 8, 10, 9, 10, 8, 10, 'Very Easy', 'Good Culture', 'Female', 58, 'United States', 'Masters', 'White or Caucasian'),
('62acc1f0cf255543173e59f7', '2022-06-17', '14:03', '00:01:38', 'Data Analyst', 'No', '0-40k', 'Tech', 'Python', 2, 2, 5, 6, 6, 3, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 22, 'Other (Please Specify):Nigeria ', 'Bachelors', 'Black or African American'),
('62ace61d575fa3a5ae972d57', '2022-06-17', '16:37', '00:01:26', 'Data Analyst', 'No', '86k-105k', 'Tech', 'Python', 4, 4, 4, 4, 3, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 26, 'Other (Please Specify):Ireland', 'Masters', 'Asian or Asian American'),
('62acf0890f8c8599d5bdce87', '2022-06-17', '17:22', '00:02:06', 'Other (Please Specify):Data Manager', 'No', '41k-65k', 'Tech', 'Other', 4, 5, 4, 5, 5, 3, 'Easy', 'Good Culture', 'Female', 31, 'United Kingdom', 'Bachelors', 'White or Caucasian'),
('62ad591424a2626027471080', '2022-06-18', '0:48', '00:01:32', 'Data Analyst', 'No', '41k-65k', 'Agriculture', 'Python', 2, 2, 4, 5, 1, 1, 'Neither easy nor difficult', 'Better Salary', 'Male', 23, 'United States', 'High School', 'Hispanic or Latino'),
('62ade22318134ddc75de385f', '2022-06-18', '10:33', '00:01:20', 'Data Analyst', 'No', '86k-105k', 'Healthcare', 'Python', 7, 10, 10, 10, 7, 8, 'Neither easy nor difficult', 'Remote Work', 'Female', 31, 'United States', 'Masters', 'Asian or Asian American'),
('62adf26f18134ddc75de4bb4', '2022-06-18', '11:42', '00:01:47', 'Student/Looking/None', 'No', '66k-85k', 'Construction', 'Other', 5, 5, 7, 7, 9, 10, 'Difficult', 'Better Salary', 'Female', 24, 'United States', 'Bachelors', 'Asian or Asian American'),
('62ae680024a2626027483ebc', '2022-06-18', '20:04', '00:02:05', 'Other (Please Specify):Analytics Engineer', 'Yes', '41k-65k', 'Finance', 'Python', 8, 10, 10, 10, 10, 10, 'Neither easy nor difficult', 'Better Salary', 'Male', 29, 'Other (Please Specify):Mexico', 'Bachelors', 'Hispanic or Latino'),
('62aee103f8f756164595adb8', '2022-06-19', '4:40', '00:01:20', 'Student/Looking/None', 'Yes', '0-40k', 'Education', 'Python', 7, 8, 9, 8, 9, 10, 'Difficult', 'Good Work/Life Balance', 'Male', 26, 'Other (Please Specify):Indonesia', 'Bachelors', 'Asian or Asian American'),
('62af07be7dc029e2d67cc3c8', '2022-06-19', '7:25', '00:01:52', 'Student/Looking/None', 'Yes', '0-40k', 'Other (Please Specify):Interning in Sciences, Weather and Meteorological data', 'Python', 3, 9, 9, 9, 9, 9, 'Neither easy nor difficult', 'Better Salary', 'Male', 20, 'India', 'High School', 'Asian or Asian American'),
('62af10295d257a28a31e6ff8', '2022-06-19', '8:01', '00:01:24', 'Data Analyst', 'Yes', '0-40k', 'Education', 'Python', 0, 2, 3, 2, 4, 2, 'Neither easy nor difficult', 'Better Salary', 'Male', 23, 'India', 'Bachelors', 'Asian or Asian American'),
('62af387018134ddc75df894e', '2022-06-19', '10:53', '00:01:47', 'Data Analyst', 'No', '106k-125k', 'Tech', 'Python', 8, 8, 9, 8, 7, 7, 'Neither easy nor difficult', 'Good Work/Life Balance', 'Male', 33, 'United States', 'Masters', 'White or Caucasian'),
('62af49025d257a28a31eb2f1', '2022-06-19', '12:04', '00:01:40', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 2, 3, 3, 5, 5, 9, 'Easy', 'Remote Work', 'Male', 26, 'Other (Please Specify):Nigeria', 'Bachelors', 'Black or African American'),
('62af53ce0f8c8599d5c04934', '2022-06-19', '12:50', '00:03:57', 'Data Analyst', 'Yes', '0-40k', 'Other (Please Specify):Consulting', 'R', 3, 9, 8, 8, 6, 6, 'Difficult', 'Better Salary', 'Male', 27, 'India', 'Bachelors', 'Asian or Asian American'),
('62af6371f8d5efcc2208e923', '2022-06-19', '13:57', '00:02:21', 'Student/Looking/None', 'No', '0-40k', 'Agriculture', 'Other:sql', 0, 8, 8, 8, 8, 8, 'Neither easy nor difficult', 'Better Salary', 'Male', 22, 'Other (Please Specify):uzb', 'Bachelors', 'Asian or Asian American'),
('62af9ed7f3072dd892739279', '2022-06-19', '18:10', '00:02:06', 'Data Analyst', 'Yes', '0-40k', 'Tech', 'Python', 3, 9, 9, 6, 9, 4, 'Easy', 'Better Salary', 'Male', 23, 'Other (Please Specify):Spain', 'Masters', 'White or Caucasian'),
('62b152960f8c8599d5c31550', '2022-06-21', '1:09', '00:01:54', 'Other (Please Specify):SAP Security Analyst', 'Yes', '0-40k', 'Other (Please Specify):Beverage and foods', 'Python', 3, 6, 7, 5, 4, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 28, 'Other (Please Specify):Mexico', 'Bachelors', 'Hispanic or Latino'),
('62b16a5c5d257a28a321a74c', '2022-06-21', '2:51', '00:02:28', 'Data Analyst', 'No', '41k-65k', 'Finance', 'Other:SQL', 7, 5, 4, 6, 4, 5, 'Easy', 'Good Work/Life Balance', 'Female', 39, 'Other (Please Specify):Portugal', 'Masters', 'White or Caucasian'),
('62b21d40bae91e4b8b985154', '2022-06-21', '15:34', '00:03:25', 'Other (Please Specify):BI Manager', 'No', '106k-125k', 'Other (Please Specify):Transportation', 'Python', 3, 2, 5, 3, 3, 4, 'Neither easy nor difficult', 'Better Salary', 'Male', 37, 'United States', 'Masters', 'White or Caucasian'),
('62b27004bc6861bf318c9038', '2022-06-21', '21:27', '00:01:33', 'Database Developer', 'Yes', '41k-65k', 'Education', 'Other:SQL', 4, 7, 7, 7, 7, 7, 'Difficult', 'Better Salary', 'Female', 29, 'United States', 'Masters', 'White or Caucasian'),
('62b2ea87f8d5efcc220e3e21', '2022-06-22', '6:10', '00:01:24', 'Data Analyst', 'Yes', '106k-125k', 'Finance', 'Python', 5, 6, 6, 5, 4, 3, 'Easy', 'Good Work/Life Balance', 'Male', 42, 'United States', 'Masters', 'White or Caucasian'),
('62b35284cec54911e9e1818c', '2022-06-22', '13:33', '00:01:11', 'Student/Looking/None', 'No', '0-40k', 'Tech', 'R', 0, 0, 0, 0, 0, 0, 'Neither easy nor difficult', 'Good Culture', 'Female', 25, 'Canada', 'Bachelors', 'Asian or Asian American'),
('62b4404df31287f32e14d1c1', '2022-06-23', '6:28', '00:01:20', 'Database Developer', 'Yes', '0-40k', 'Telecommunication', 'Python', 5, 5, 5, 5, 4, 5, 'Easy', 'Better Salary', 'Male', 66, 'Other (Please Specify):Morocco ', 'High School', 'Black or African American'),
('62b525563f28f20328aeee5c', '2022-06-23', '22:45', '00:00:50', 'Data Analyst', 'Yes', '125k-150k', 'Other (Please Specify):Retail', 'R', 8, 5, 6, 6, 5, 7, 'Easy', 'Better Salary', 'Male', 26, 'United States', 'Bachelors', 'White or Caucasian'),
('62b5a3e29bc428d5345f6e89', '2022-06-24', '7:45', '00:03:12', 'Other (Please Specify):Data Scientist Intern', 'No', '0-40k', 'Other (Please Specify):Manufacturing', 'R', 4, 6, 7, 7, 4, 6, 'Difficult', 'Better Salary', 'Male', 21, 'United States', 'Bachelors', 'White or Caucasian'),
('62b71083f31287f32e189026', '2022-06-25', '9:41', '00:04:43', 'Student/Looking/None', 'Yes', '0-40k', 'Tech', 'Python', 1, 2, 1, 2, 1, 2, 'Difficult', 'Better Salary', 'Male', 26, 'Other (Please Specify):Oman', 'Bachelors', 'Asian or Asian American'),
('62b795033b026e423f287ecd', '2022-06-25', '19:06', '00:02:17', 'Data Engineer', 'No', '0-40k', 'Tech', 'Python', 6, 6, 6, 6, 4, 3, 'Easy', 'Other (Please Specify):Career Advancedment', 'Male', 24, 'Other (Please Specify):Costa Rica', 'Bachelors', 'Hispanic or Latino'),
('62b89039377223ff07b80fb5', '2022-06-26', '12:58', '00:01:19', 'Data Analyst', 'No', '41k-65k', 'Other (Please Specify):Automotive', 'Python', 8, 7, 6, 7, 6, 8, 'Easy', 'Remote Work', 'Male', 22, 'United States', 'Bachelors', 'Asian or Asian American');

-- INSERT de valores desde datos_iniciales a datos_personales
INSERT INTO datos_personales (id_encuestado, genero, edad, pais, educacion, etnia) SELECT id_encuestado, genero, edad, pais, educacion, etnia FROM datos_iniciales;

-- INSERT de valores desde datos_iniciales a datos_trabajo
-- ERROR en INSERT: la columna salario (int) en la tabla destino es de un tipo diferente en la tabla origen (varchar)
-- PENDIENTE: 1. Cambiar salario en datos_iniciales para que sea del tipo INT en vez del tipo VARCHAR
-- 2. Se uso PYTHON para convertir salario VARCHAR a salario INT, .csv generado con SSMS
-- 3. El codigo en PYTHON se programo para tomar el valor mas alto del campo salario, es decir, "0-40k" (Se tomo 40 y se multiplico por 1000, registrando asi 40000, dato del tipo INT)
-- 4. Por error al momento de importar los nuevos datos, se creo una tabla nueva con los datos de tipo INT, se copio todo en el INSERT menos los salarios
INSERT INTO datos_trabajo (id_encuestado, fecha_hecha, hora_hecha, duracion, cargo, cambio_carrera, industria, lenguaje, dificultad, modalidad)
SELECT id_encuestado, fecha_hecha, hora_hecha, duracion, cargo, cambio_carrera, industria, lenguaje, dificultad, modalidad
FROM datos_iniciales;
-- 5. Se hizo un JOIN para confirmar y un UPDATE posterior para insertar los datos finales en la columna 'salario'
-- SELECT con un JOIN para verificar primero lo que se va a actualizar con el UPDATE
SELECT
    TDO.id_encuestado,
    TDO.salario AS TDestino, -- Salario actual en la tabla que se quiere actualizar
    TNI.salario AS TImportada -- Salario nuevo que se copiar� al destino
FROM
    datos_trabajo TDO -- Nombre de la tabla final
INNER JOIN
    salarios_nuevo TNI -- Nombre de la tabla creada con SSMS
    ON TDO.id_encuestado = TNI.id_encuestado -- La condici�n de cruce por ID
-- Si el SELECT anterior muestra los datos correctos, ejecutar el UPDATE.
UPDATE TDO
SET
    TDO.salario = TNI.salario -- Copia el valor de salario desde la tabla nueva a la original
FROM
    datos_trabajo TDO -- Nombre de la tabla final
INNER JOIN
    salarios_nuevo TNI -- Nombre de la tabla creada por SSMS
    ON TDO.id_encuestado = TNI.id_encuestado; -- Asegura que solo se actualicen filas con el mismo id_encuestado

-- INSERT de valores desde datos_iniciales a datos_q6
INSERT INTO datos_q6 (id_encuestado, q6_salario, q6_worklife, q6_coworkers, q6_gestion, q6_ascenso)
SELECT id_encuestado, q6_salario, q6_worklife, q6_coworkers, q6_gestion, q6_ascenso
FROM datos_iniciales;

--------------------------------------------------
-- DATOS INSERTADOS CORRECTAMENTE EN CADA TABLA --
--------------------------------------------------

-----------------------------------------------
-- LIMPIEZA/ACTUALIZACION DE TABLAS DE DATOS --
-----------------------------------------------

-------------------------------
-- LIMPIEZA datos_personales --
-------------------------------

SELECT * FROM datos_personales; -- primera tabla (genero listo, edad listo, pais listo, educacion y etnia listos)

SELECT id_encuestado, educacion FROM datos_personales WHERE educacion IS NULL; -- UNICA COLUMNA en la tabla con datos NULL
UPDATE datos_personales SET educacion = 'None' WHERE educacion IS NULL; -- UPDATE para cambiar el NULL a NONE

SELECT * FROM datos_personales WHERE id_encuestado IS NULL
OR genero IS NULL 
OR edad IS NULL 
OR pais IS NULL 
OR educacion IS NULL 
OR etnia IS NULL; -- Todos los campos completos

SELECT genero, COUNT(genero) AS cuantos FROM datos_personales GROUP BY genero ORDER BY cuantos DESC; -- 468 Hombres / 162 Mujeres = Total de encuestados 630 personas
SELECT edad, COUNT(edad) AS edades FROM datos_personales GROUP BY edad ORDER BY edad ASC; -- Variacion alta de edades
SELECT pais, COUNT(pais) AS paises FROM datos_personales GROUP BY pais ORDER BY paises DESC; -- Variacion alta de edades
SELECT educacion, COUNT(educacion) AS edus FROM datos_personales GROUP BY educacion ORDER BY edus; -- Variacion alta de edades
SELECT etnia, COUNT(etnia) AS etni FROM datos_personales GROUP BY etnia ORDER BY etni DESC; -- Variacion alta de edades

SELECT edad, (edad / 10) * 10 AS rango FROM datos_personales; -- Prueba de rango
-- Se crea un CTE para agrupar por rangos las edades en la tabla para mejor visualizacion
WITH r_edades AS (
    SELECT
		-- Tomar el valor de edad y asignarlo a un rango de 10 numeros calculando el valor minimo del valor inicial
        (edad / 10) * 10 AS r_inferior,
		 -- Usar CASE para crear etiquetas de rango <20 a�os y >90 a�os
� � � � CASE
� � � � � � WHEN edad < 20 THEN 'Pollitos' -- Edades menores de 20
� � � � � � WHEN edad >= 90 THEN 'Dinosaurios' -- Edades de 90 o mas
� � � � � � ELSE -- Para el resto de edades, crea el rango de 10 a�os
        CAST((edad / 10) * 10 AS VARCHAR(10)) + '-' + CAST(((edad / 10) * 10) + 9 AS VARCHAR(10))
		END AS rango_edades
    FROM
        datos_personales
)
-- Consulta principal que usa el CTE
SELECT
    cte.rango_edades,          -- El rango de edad como texto
    COUNT(*) AS total_en_rango -- El conteo de personas en ese rango
FROM
    r_edades cte               -- Seleccion desde el CTE
GROUP BY
    cte.r_inferior,            -- Agrupa por el n�mero inferior del rango
    cte.rango_edades           -- Agrupa por el texto del rango (para poder seleccionarlo)
ORDER BY
    cte.r_inferior ASC;        -- Ordena los resultados por el l�mite inferior hasta el superior

SELECT pais, COUNT(pais) AS pers_pais
FROM datos_personales
GROUP BY pais
ORDER BY pers_pais DESC; -- 85 Paises registrados (71 registros luego de limpiiar)

-- ERRORES de tipografia encontrados:
-- Other: vaciosX, ghana > GhanaX, Niger? > NigeriaX, Fin > FinlandX, Ire & Irel > IrelandX, Brazik > BrasilX, Argentine > ArgentinaX, 
-- Austr > AustraliaX, Africa (Nigeria) > NigeriaX, Aisa (Asia?) > Japan?X, Kenua > KenyaX, Leba > PolandX, SG > SingaporeX,
-- Portugsl > PortugalX, Other (Please Specify):Republic democratic of Congo > Republic Democratic of CongoX,
-- TUNISIA > TunisiaX, Per� > PeruX, Sri lanka > Sri LankaX, uzb > UzbekistanX
-- UPDATE para los paises
SELECT pais FROM datos_personales WHERE pais LIKE '%Arab%';
SELECT pais FROM datos_personales WHERE pais = 'Planet Earth';
UPDATE datos_personales SET pais = 'Other (Please Specify):Somalia' WHERE pais = 'Other (Please Specify): Somalia';

-- JOIN para mostrar informacion de un encuestado
SELECT
    dp.*, -- Selecciona todas las columnas de datos_personales
    dt.* -- Selecciona todas las columnas de datos_trabajo
FROM
    datos_personales AS dp -- Alias para datos_personales
INNER JOIN
    datos_trabajo AS dt -- Alias para datos_trabajo
    ON dp.id_encuestado = dt.id_encuestado -- Condici�n de JOIN: ambas tablas deben tener el mismo ID de encuestado
WHERE
    dp.pais = 'Other (Please Specify):Venezuela' -- Filtro de la primera consulta aplicado a datos_personales
    AND dt.id_encuestado = '62a3d21ef3072dd8926314d1'; -- Filtro de la segunda consulta aplicado a datos_trabajo

--Revision de etnia
SELECT etnia, COUNT(etnia) AS cant_e
FROM datos_personales
GROUP BY etnia
ORDER BY cant_e DESC; -- 41 etnias registradas (5 filas finales)

-- Limpieza de columna etnia
SELECT * FROM datos_personales WHERE etnia = 'American Indian or Alaska Native' OR etnia = 'Native Hawaiian or other Pacific Islander';
SELECT * FROM datos_personales WHERE id_encuestado = '62a5a124cec54911e9cd29f5' OR id_encuestado = '62a749ebd8c00e9f541efa36';
SELECT * FROM datos_personales WHERE pais = 'United States' ORDER BY 6;
UPDATE datos_personales SET etnia = 'White or Caucasian' WHERE id_encuestado = '62a40c99575fa3a5ae89de4b';
WITH cte_act AS (
    SELECT
        id_encuestado
    FROM
        datos_personales
    WHERE
        pais = 'United States'
        AND etnia = 'American Indian or Alaska Native'
)
UPDATE datos_personales
SET
    etnia = 'White or Caucasian'
WHERE
    id_encuestado IN (SELECT id_encuestado FROM cte_act);

-- Demasiados errores/ inconsistencias en la columna etnia
-- Se decide reemplazar los registros que comienzan por Other (... >> Human
-- Esta columna al final del dia puede ser utilizada como informacion general solamente
-- Verificacion de datos con 'Other'
SELECT COUNT(*) FROM datos_personales WHERE etnia LIKE 'Other (Please specify):%'; -- (56 registros a ser modificados)
-- Ejecucion del UPDATE
UPDATE datos_personales SET etnia = 'Human' WHERE etnia LIKE 'Other (Please specify):%'; -- (7 registros finales actualizados)

------------------------------------------
-- LIMPIEZA COMPLETADA datos_personales --
------------------------------------------

-------------------------------------
-- LIMPIEZA/ACTUALIZACION datos_q6 --
-------------------------------------

SELECT * FROM datos_q6; -- segunda tabla

SELECT id_encuestado, q6_salario FROM datos_q6 WHERE q6_salario IS NULL; -- 7 registros con valores NULL
UPDATE datos_q6 SET q6_salario = 0 WHERE q6_salario IS NULL; -- 81 registros finales con valor 0

SELECT id_encuestado, q6_worklife FROM datos_q6 WHERE q6_worklife IS NULL; -- 10 registros con valores NULL
UPDATE datos_q6 SET q6_worklife = 0 WHERE q6_worklife IS NULL; -- 38 registros finales con valor 0

SELECT id_encuestado, q6_coworkers FROM datos_q6 WHERE q6_coworkers IS NULL; -- 11 registros con valores NULL
UPDATE datos_q6 SET q6_coworkers = 0 WHERE q6_coworkers IS NULL; -- 37 registros finales con valor 0

SELECT id_encuestado, q6_gestion FROM datos_q6 WHERE q6_gestion IS NULL; -- 12 registros con valores NULL
UPDATE datos_q6 SET q6_gestion = 0 WHERE q6_gestion IS NULL;-- 51 registros finales con valor 0

SELECT id_encuestado, q6_ascenso FROM datos_q6 WHERE q6_ascenso IS NULL; -- 13 registros con valores NULL
UPDATE datos_q6 SET q6_ascenso = 0 WHERE q6_ascenso IS NULL;-- 82 registros finales con valor 0

SELECT id_encuestado, q6_aprendizaje FROM datos_q6 WHERE q6_aprendizaje IS NULL; -- 630(TODOS) REGISTROS NULOS (REVISAR ESTO)
SELECT * FROM datos_iniciales; -- La tabla original contiene los valores actuales de la columna q6_aprendizaje
SELECT -- Verificar los registros con un JOIN
    tinic.id_encuestado,
    tinic.q6_aprendizaje AS aprendizaje_I, -- Aprendizaje en datos_iniciales
    tdes.q6_aprendizaje AS aprendizaje_Q6 -- Aprendizaje en datos_q6
FROM
    datos_iniciales tinic -- Nombre de la tabla fuente
INNER JOIN
    datos_q6 tdes -- Nombre de la tabla destino
    ON tinic.id_encuestado = tdes.id_encuestado -- La condici�n de cruce por ID

UPDATE tinic -- Ejecutar el UPDATE con los datos verificados
SET
    tinic.q6_aprendizaje = tdes.q6_aprendizaje -- Copia el valor de q6_aprendizaje desde la tabla inicial a la tabla destino
FROM
    datos_iniciales tdes -- Nombre de la tabla inicial
INNER JOIN
    datos_q6 tinic -- Nombre de la tabla destino
    ON tinic.id_encuestado = tdes.id_encuestado; -- Asegura que solo se actualicen filas con el mismo id_encuestado
-- Valores actualizados (corregida la columna con datos NULL)
SELECT id_encuestado, q6_aprendizaje FROM datos_q6 WHERE q6_aprendizaje IS NULL; -- Verificando nuevamente los registros NULL, solo se encuentran 5
UPDATE datos_q6 SET q6_aprendizaje = 0 WHERE q6_aprendizaje IS NULL;-- 46 registros finales con valor 0

-- Validar si aun hay valores NULL en alguna columna menos id_encuestado que no permite NULL
SELECT q6_aprendizaje, 
q6_ascenso, 
q6_coworkers, 
q6_gestion, 
q6_salario, 
q6_worklife 
FROM 
datos_q6
WHERE 
q6_aprendizaje IS NULL 
OR q6_ascenso IS NULL 
OR q6_coworkers IS NULL 
OR q6_gestion IS NULL 
OR q6_salario IS NULL 
OR q6_worklife IS NULL;
-- Validado

-------------------------------------
--- LIMPIEZA COMPLETADA datos_q6 ----
-------------------------------------

------------------------------------------
-- LIMPIEZA/ACTUALIZACION datos_trabajo --
------------------------------------------

SELECT * FROM datos_trabajo; -- tercera tabla

SELECT cargo, COUNT(cargo) AS cant_c FROM datos_trabajo GROUP BY cargo ORDER BY cant_c DESC; -- CARGOS (listo)
-- Se decidio practicar UPDATE, LIKE, HAVING para ir leyendo los cargos e ir actualizando acorde a los resultados
SELECT * FROM datos_trabajo WHERE cargo LIKE '%intern%'
UPDATE datos_trabajo SET cargo = 'Other (Please Specify):Sales & Marketing Analyst' WHERE cargo = 'Other (Please Specify):Sales & marketing'

SELECT industria, COUNT(industria) AS cant_i FROM datos_trabajo GROUP BY industria ORDER BY cant_i DESC; -- INDUSTRIAS (listo)
-- Gran cantidad de variacion en la industria ya que se puede aplicar en muchos temas, se cambio por Other/Student/Not working
WITH ind_cte AS (
	SELECT 
		id_encuestado, industria
	FROM 
		datos_trabajo
	WHERE 
		industria LIKE 'Other%'
)
UPDATE datos_trabajo
SET
	industria = 'Other/Student/Not working'
WHERE
	id_encuestado IN (SELECT id_encuestado FROM ind_cte)

SELECT lenguaje, COUNT(lenguaje) AS cant_l FROM datos_trabajo GROUP BY lenguaje ORDER BY cant_l DESC; -- LENGUAJE (listo)
-- La mayoria de las opciones que comenzaban por 'Other:' se referian a que no usaban ningun lenguaje o no lo requerian 
WITH len_cte AS (
	SELECT 
		id_encuestado, lenguaje
	FROM 
		datos_trabajo
	WHERE 
		lenguaje = '%other%'
)
UPDATE datos_trabajo
SET
	lenguaje = 'Other/None/Dont require'
WHERE
	id_encuestado IN (SELECT id_encuestado FROM len_cte)

SELECT modalidad, COUNT(modalidad) AS cant_m FROM datos_trabajo GROUP BY modalidad ORDER BY cant_m DESC; -- MODALIDAD (listo)
-- Se observo que predominaba las mismas primeras 4 opciones en aquellos encuestados con seleccion Other:
WITH mod_cte AS (
    SELECT
        id_encuestado, modalidad
    FROM
        datos_trabajo
    WHERE
        modalidad LIKE 'Other%'
)
UPDATE datos_trabajo
SET
    modalidad = 'All of the above'
WHERE
    id_encuestado IN (SELECT id_encuestado FROM mod_cte);

------------------------------------------
--- LIMPIEZA COMPLETADA datos_trabajo ----
------------------------------------------

-- ELIMINAR tabla salarios_nuevos
-- Solo se utilizo esta tabla para hacer un INSERT con tipo de datos nuevos
-- Se convirtio el salario de la tabla original al tipo de dato correcto para la tabla destino (int)

DROP TABLE data_project.dbo.salarios_nuevo;

-- La tabla original datos_iniciales se mantiene como referencia