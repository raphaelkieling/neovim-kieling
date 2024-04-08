# Tests

Ways to test software.

---

## Type of tests

There are many types of tests that can be used to test software. Some of the most common types of tests are:

> Piramid of tests

- Unit Tests
- Integration Tests
- End-to-End Tests

Others:
- Mutation Tests

## Testing Methodologies

And also there are many methodologies to test software. Some of the most common methodologies are:

- Test Driven Development (TDD)
- Behavior Driven Development (BDD)

---

### Unit Tests

Unit tests are tests that test a single unit of code. They are the smallest tests you can write. They are used to test a single function or method.

> You can use the Arrange, Act, Assert pattern to write unit tests.

```javascript
// cat.controller.js
class CatController {
  constructor(catService) {
    this.catService = catService;
  }

  async getCatById(id) {
    return this.catService.getCatById(id);
  }
}

// cat.controller.test.js
it('should get a cat by id', () => {
  // Arrange
  const catService = {
    getCatById: jest.fn().mockResolvedValue({ id: 1, name: 'Fluffy' }),
  };
  const catController = new CatController(catService);

  // Act
  const cat = await catController.getCatById(1);

  // Assert
  expect(cat).toEqual({ id: 1, name: 'Fluffy' });
  expect(catService.getCatById).toHaveBeenCalledWith(1);
});
```

#### When?

Ever

---

### Integration Tests

Integration tests are tests that test how different units of code work together. They are used to test how different functions or methods work together.

- You CAN mock some external dependencies.

```javascript
it('should get a cat by id', async () => {
  const response = await request(app).get('/cats/1');

  expect(response.status).toBe(200);
  expect(response.body).toEqual({ id: 1, name: 'Fluffy' });
});
```

#### When?

When you want to test how different units of code work together.

---

### End-to-End Tests

End-to-End tests are tests that test the entire system. They are used to test how the entire system works

TODO: Add example

---

### Mutation Tests

Mutation tests are tests that test how well your tests are written. They are used to test how well your tests can detect changes in your code.

The most used library to do mutation tests is Stryker for Javascript.

```sh
# Install stryker
# it will create a stryker.conf.js file
npm init stryker

# Run stryker
npx stryker run
```

#### When?

When you are not feeling confident about your current tests. This isn't a very common type of test, although it's very useful.


