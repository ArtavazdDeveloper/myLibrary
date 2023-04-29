package com.example.mylibrary.manager;

import com.example.mylibrary.dp.DBConnectionProvider;
import com.example.mylibrary.model.Author;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.util.stream.DoubleStream.builder;

public class AuthorManager {
    private Connection connection = DBConnectionProvider.getInstance().getConnection();
    public void save(Author author) {
        String sql = "INSERT INTO author(name,surname,email,age) VALUES(?,?,?,?)";

        try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, author.getName());
            ps.setString(2, author.getSurname());
            ps.setString(3, author.getEmail());
            ps.setInt(4, author.getAge());
            ps.executeUpdate();
            ResultSet generatedKeys = ps.getGeneratedKeys();
            if (generatedKeys.next()) {
                author.setId(generatedKeys.getInt(1));
            }
            System.out.println("Author inserted into DB");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Author getById(int id) {
        try (Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery("Select * from author where id = " + id);
            if (resultSet.next()) {
                return getAuthorFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Author> getAll() {
        List<Author> authorList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("Select * from author");
            while (resultSet.next()) {
                authorList.add(getAuthorFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return authorList;
    }



    public void removeById(int authorId) {
        String sql = "DELETE FROM company WHERE id = " + authorId;
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void update(Author author) {
        String sql = "UPDATE author SET name = ?, surname = '?', email = ?, age = ?, WHERE id = ?";
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(String.format(sql, author.getName(), author.getSurname(), author.getEmail(),
                    author.getAge(),author.getId()));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    private Author getAuthorFromResultSet(ResultSet resultSet) throws SQLException {
        return Author.builder()
                .id(resultSet.getInt("id"))
                .name(resultSet.getString("name"))
                .surname(resultSet.getString("surname"))
                .email(resultSet.getString("email"))
                .age(resultSet.getInt("age"))
                .build();
    }


}
